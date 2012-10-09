use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Mail extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use Moose::Util::TypeConstraints;
    use Data::Dumper;
    use P2I::ISPconfigSOAP;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });
    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_mail_server_id');

    method convert {
        my %clients;
        # Convert local mailboxes and forwards
        for my $mbox ($self->db->get_mailboxes) {
            $clients{$mbox->login} //= $self->lather('client_get_by_username', $mbox->login)->{userid};
            $self->_create_mailbox($clients{$mbox->login}, $mbox);
        }

        # Convert aliases
        for my $alias ($self->db->get_aliases) {
            $clients{$alias->login} //= $self->lather('client_get_by_username', $alias->login)->{userid};
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
            $data{server_id} = $self->server_id;
            $self->lather('mail_user_add', $client_id, \%data);
        }
    }

    method _create_domain(Int $client_id, Str $domain) {
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
        my $srvs = $self->lather('server_get_serverid_by_ip', $self->config->{server}{mail});
        die "Mail server @{[ $self->config->{server}{mail} ]} not found" unless @$srvs;
        return $srvs->[0]{server_id};
    }

       # TODO move this to P2I::Data::Mail::Box
       method _field_map {
        my $def = $self->config->{defaults}{mail};
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
        };
    }

    method _create_maildir($m, HashRef $def) {
        local $_ = $def->{maildir};
        s/%d/$m->domain/eg;
        s/%a/$m->mail_name/eg;
        s/%A/$m->mail_name . '@' . $m->domain/eg;
        return $_;
    }
}
