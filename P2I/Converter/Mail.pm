use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Mail extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ IPAddress /;
    use Moose::Util::TypeConstraints;
    use Data::Dumper;
    use P2I::ISPconfigSOAP;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });
    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_mail_server_id');
    has olirc       => (is => 'ro', isa => HashRef, default => sub { {} });

    method convert {
        my %clients;

        $self->dbg(__PACKAGE__ . '::convert');
        
        # Convert local mailboxes and forwards
        for my $mbox ($self->db->get_mailboxes) {
            $clients{$mbox->login} //= $self->lather('client_get_by_username', $mbox->login)->{userid};
            $self->dbg("\tConverting mailbox: ", $mbox->login, " (userID $clients{$mbox->login})");
            $self->_create_mailbox($clients{$mbox->login}, $mbox);
        }

        # Convert aliases
        for my $alias ($self->db->get_aliases) {
            $clients{$alias->login} //= $self->lather('client_get_by_username', $alias->login)->{userid};
            $self->dbg("\tConverting alias ", $alias->login, "(userID $clients{$alias->login})");
            $self->_create_alias($clients{$alias->login}, $alias);
        }
    }

    method _create_mailbox(Int $client_id, $mbox) {
        # Create mail domain if it doesn't exit yet
        my $doms    = $self->domains;
        my $mdomain = $mbox->domain;
        unless(exists $doms->{$mdomain}) {
            $self->_create_domain($client_id, $mdomain);
            $doms->{$mdomain} = 1;
        }

        # Check whether is'a local mailbox or a forward
        if($mbox->redirect) {
            # Create a forward
            $self->lather('mail_forward_add', $client_id, {
                    server_id   => $self->server_id,
                    source      => $mbox->email,
                    destination => $mbox->redir_addr,
                    type        => 'forward',
                    active      => 'y'
                });
        } else {
            my %data;
            # Create a mailbox
            $self->_map_fields($mbox, \%data, $self->_field_map);
            $self->lather('mail_user_add', $client_id, \%data);
            $self->_add_to_olirc($mbox->email, $mbox);
        }
    }

    method _create_domain(Int $client_id, Str $domain) {
        $self->dbg("\t\tAdding mail domain `$domain'");
        $self->lather('mail_domain_add', $client_id, {
                server_id   => $self->server_id,
                domain      => $domain,
                active      => 'y',
            });
    }

    method _create_alias(Int $client_id, $alias) {
        $self->lather('mail_alias_add', $client_id, {
                server_id   => $self->server_id,
                source      => $alias->full_alias,
                destination => $alias->email,
                type        => 'alias',
                active      => 'y',
            });
    }

    method _build_mail_server_id {
        return $self->get_server_id($self->config->server('mail'));
    }

    # TODO move this to P2I::Data::Mail::Box
    method _field_map {
        my $def = $self->config->defaults('mail');
        return {
            email                   => 'email',
            login                   => 'email',
            password                => 'mangled_password',
            name                    => 'realname',
#            uid  (int(11))
#            gid  (int(11))
            maildir                 => sub { $self->_create_maildir(shift, $def) },
            quota                   => sub { my $q=shift->quota; -1==$q ? 0 : $q },
#            cc  (varchar(255))
            homedir                 => \$def->{homedir},
            autoresponder           => \'n',
#            autoresponder_start_date  (datetime)
#            autoresponder_end_date  (datetime)
#            autoresponder_text  (mediumtext)
            move_junk       => \'y',
#            custom_mailfilter  (mediumtext)
            postfix         => \'y',
            access          => \'y',
            disableimap     => \'n',
            disablepop3     => \'n',
            disabledeliver  => \'n',
            disablesmtp     => \'n',
            server_id       => sub { \$self->server_id },
        };
    }

    method _create_maildir($m, HashRef $def) {
        local $_ = $def->{maildir};
        s/%d/$m->domain/eg;
        s/%a/$m->mail_name/eg;
        s/%A/$m->mail_name . '@' . $m->domain/eg;
        return $_;
    }

    # Add a bit of text to the offlineimaprc data
    method _add_to_olirc(Str $acct, $mbox) {
        my $d = $self->olirc;
        if(defined $d->{$acct}) {
            print STDERR "Offlineimap data for `$acct' already present!\n";
            return;
        }
        $acct =~ s/[\@.]/_/g;
        $d->{$acct} = { map { $_ => $mbox->$_ } qw / login domain password / };
    }

    {
        my $oli_header = <<EOF;
[general]
accounts = %s
ignore-readonly = yes
autorefresh     = 10
quick           = 0

EOF
        my $oli_acct = <<EOF;
[Account %s]
localrepository = %s_New
remoterepository = %s_Old

EOF
        my $oli_repo = <<EOF;
[Repository %s]
type = IMAP
ssl = %s
maxconnections = 10
remoteport = %d
remotehost = %s
remoteuser = %s
remotepass = %s

EOF

    # Before destroying the object, write out an offlineimaprc from accumulated data
    method DEMOLISH($global) {
        my $oli = $self->olirc;
        return unless keys %$oli;
        my $mailsync = $self->config->mailsync;
        print Dumper($mailsync);
        my $file = $mailsync->{writerc} or return;
        my @sslparams = $mailsync->{ssl} ? ('yes', 993) : ('no', 143);

        $self->add_to_file($file, sprintf($oli_header, join(',', keys %$oli)));
        
        while(my ($acct, $d) = each %$oli) {
            my $user    = $d->{login};
            my $login   = "$user\@$d->{domain}";
            my $host    = $mailsync->{fromserver};
            $host       =~ s/%u/$user/g;
            $host       =~ s/%d/$d->{domain}/g;
            
            my $section = sprintf($oli_acct, ($acct) x 3);
            $section .=   sprintf($oli_repo,
                    "${acct}_Old", @sslparams, $host, $login, $d->{password});
            $section .=   sprintf($oli_repo,
                    "${acct}_New", @sslparams, $self->config->server('mail'), $login, $d->{password});
            $self->add_to_file($file, $section);
        }
    }

    }
}
