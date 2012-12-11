use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Databases extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });
    has db_server_id=> (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_db_server_id');
    has olirc       => (is => 'ro', isa => HashRef, default => sub { {} });

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');
        
        for my $db ($self->db->get_databases) {
        }
    }

    method _build_db_server_id {
        return $self->get_server_id($self->config->server('db'));
    }

    # TODO move this to P2I::Data::Databases::Box
    method _field_map {
        my $def = $self->config->defaults('db');
        return {
            email                   => 'email',
            login                   => 'email',
            password                => 'mangled_password',
            name                    => 'realname',
            uid                     => \$def->{uid},
            gid                     => \$def->{gid},
            maildir                 => sub { $self->_create_maildir(shift, $def) },
            quota                   => sub { my $q=shift->quota; -1==$q ? 0 : $q },
            cc                      => '',
            homedir                 => \$def->{homedir},
            autoresponder           => \'n',
            autoresponder_start_date=> '',
            autoresponder_end_date  => '',
            autoresponder_text      => '',
            move_junk               => \'y',
            custom_mailfilter       => '',
            postfix                 => \'y',
            access                  => \'y',
            disableimap             => \'n',
            disablepop3             => \'n',
            disabledeliver          => \'n',
            disablesmtp             => \'n',
            server_id               => sub { \$self->server_id },
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
