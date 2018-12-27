use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Mail extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ IPAddress /;
    use Moose::Util::TypeConstraints;
    use P2I::Data::Mail::Box;
    use Data::Dumper;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });
    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_mail_server_id');
    has olirc       => (is => 'ro', isa => HashRef, default => sub { {} });

    method convert {
        my %clients;

        $self->dbg(__PACKAGE__ . '::convert');

        P2I::Data::Mail::Box->cipher($self->config->cipher);

        # Convert local mailboxes and forwards
        for my $mbox ($self->db->get_mailboxes) {
            $clients{$mbox->login} //= $self->lather('client_get_by_username', $mbox->login)->{userid};
            $self->dbg("\tConverting mailbox: ", $mbox->mail_name, " (userID $clients{$mbox->login})");
            $self->_create_mailbox_or_redirect($clients{$mbox->login}, $mbox);
        }

        # Convert aliases
        for my $alias ($self->db->get_aliases) {
            $clients{$alias->login} //= $self->lather('client_get_by_username', $alias->login)->{userid};
            $self->dbg("\tConverting alias ", $alias->login, "(userID $clients{$alias->login})");
            $self->_create_alias($clients{$alias->login}, $alias);
        }

        # Convert email lists
        for my $list ($self->db->get_maillists) {
            $clients{$list->login} //= $self->get_client_id($list->login);
            $self->dbg("\tConverting list ", $list->name, " (userID ", $list->login, ", $clients{$list->login})");
            $self->_create_list($clients{$list->login}, $list);
        }
    }

    method _create_mailbox_or_redirect(Int $client_id, $mbox) {
        # Create mail domain if it doesn't exit yet
        my $doms    = $self->domains;
        my $mdomain = $mbox->domain;
        unless(exists $doms->{$mdomain}) {
            $self->_create_domain($client_id, $mdomain);
            $doms->{$mdomain} = 1;
            for my $ad ($self->db->get_aliasdomains($mdomain)) {
                $self->_create_aliasdomain(Int $client_id, $ad, $mdomain);
                $doms->{$ad} = 1;
            }
        }

        # Check whether is'a local mailbox or a forward
        return $self->_create_redirect($client_id, $mbox) unless $mbox->postbox;
        return $self->_create_mailbox($client_id, $mbox);
    }

    method _create_mailbox(Int $client_id, $mbox) {
        my %data;
        $self->dbg("\tCreating local mailbox");
        $self->_map_fields($mbox, \%data, $self->_field_map);
        $self->lather('mail_user_add', $client_id, \%data);
        $self->_add_to_olirc($mbox->email, $mbox);
    }

    method _create_redirect(Int $client_id, $mbox) {
        $self->dbg("\tCreating forward to ", $mbox->redir_addr);
        $self->lather('mail_forward_add', $client_id, {
                server_id   => $self->server_id,
                source      => $mbox->email,
                destination => join(' ', $mbox->redir_addr, $self->db->get_redirs($mbox->mail_name, $mbox->domain)),
                type        => 'forward',
                active      => 'y'
            });
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

    method _create_aliasdomain(Int $client_id, Str $alias, Str $domain) {
        $self->dbg("\tCreating alias $alias for mail domain $domain, belonging to $client_id");
        $self->lather('mail_aliasdomain_add', $client_id, {  # Might be mail_alias_add, but different type
                server_id   => $self->server_id,
                source      => $alias,
                destination => $domain,
                type        => 'aliasdomain',
                active      => 'y',
            });

    method _create_list(Int $client_id, $list) {
        $self->dbg("\tCreating email list ", $list->name, " for ", $list->domain, " belonging to $client_id");
        $self->lather('mail_mailinglist_add', $client_id, {
                server_id   => $self->server_id,
                domain      => $list->domain,
                email       => $list->email, # !!!TBD!!!
                password    => $list->password, # !!!TBD!!!
                listname    => $list->name,
            });
        my $sync = $self->config->plesk->{sync};
        # Copy the list data
        my $cmds = sprintf "echo 'Copy mailing list'\nrsync -za -e'ssh -p%d' %s\@%s:/var/lib/mailman/lists/%s /var/lib/mailman/lists\n",
            $sync->{port}, $sync->{user}, $sync->{host}, $list->name
        ;
        # Copy the list archive
        foreach my $path (map {($_, "$_.mbox")} $list->name) {
            $cmds .= sprintf "rsync -za -e'ssh -p%d' %s\@%s:/var/lib/mailman/archives/private/%s /var/lib/mailman/archives/private\n",
                $sync->{port}, $sync->{user}, $sync->{host}, $path
            ;
            $cmds .= sprintf "chown -R root:mailman /var/lib/mailman/archives/private/%s\n",
                $path
            ;
        }
        $self->add_to_script($cmds);
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
            password                => 'password',
            name                    => 'realname',
            uid                     => \$def->{uid},
            gid                     => \$def->{gid},
            maildir                 => sub { $self->_create_maildir(shift, $def) },
            quota                   => sub { my $q=shift->quota; -1==$q ? 0 : $q },
            cc                      => sub { my $self=shift; $self->redirect ? join(' ', $self->redir_addr, $self->db->get_redirs($self->mail_name, $self->domain)) : ''},
            homedir                 => \$def->{homedir},
            autoresponder           => sub { my $self = shift; $self->autoresponder ? 'y' : 'n' },
            autoresponder_start_date=> '',
            autoresponder_end_date  => '',
            autoresponder_text      => 'response',
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
        my $acctid = $acct;
        $acctid =~ s/[\@.]/_/g;
        $d->{$acctid} = { map { $_ => $mbox->$_ } qw / email domain password / };
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
readonly = %s
ssl = %s
maxconnections = 10
remoteport = %d
remotehost = %s
remoteuser = %s
remotepass = %s
nametrans: %s

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
            my $login   = $d->{email};
            my $user    = $login;
            $user       =~ s'@.*'';
            my $host    = $mailsync->{fromserver};
            $host       =~ s/%u/$user/g;
            $host       =~ s/%d/$d->{domain}/g;
            
            my $section = sprintf($oli_acct, ($acct) x 3);
            $section .=   sprintf($oli_repo,
                    "${acct}_Old", 'True', @sslparams, $host, $login, $d->{password}, "lambda folder: 'Junk' if folder == 'INBOX.Spam' else re.sub(r'^INBOX.', r'', folder)");
            $section .=   sprintf($oli_repo,
                    "${acct}_New", 'False', @sslparams, $self->config->server('mail'), $login, $d->{password}, "lambda folder: 'INBOX.Spam' if folder == 'Junk' else 'INBOX' if folder == 'INBOX' else 'INBOX.' + folder");
            $self->add_to_file($file, $section);
        }
    }

    }
}
