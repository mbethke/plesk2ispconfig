use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Websites extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::Data::Website;

    has server_id => (is => 'ro', isa => Int,
                    lazy => 1, builder => '_build_web_server_id');

    method convert {
        my $db = $self->db;
        for my $id ($db->list_website_ids) {
            my $data = {};
            my $site = P2I::Data::Website->new($db, $id);
            $self->_map_fields($site, $data, $self->_field_map);
            #use Data::Dumper;
            #print STDERR Dumper($data);
            $self->lather('sites_web_domain_add',
                $self->get_client_id($site->client_login),
                $data
            );
        }
    }

    method _build_web_server_id {
        return $self->get_server_id($self->config->{server}{web});
    }

    method _field_map {
        my $def = $self->config->{defaults}{web};
        return {
            server_id           => \$self->server_id,
            ip_address          => sub { $def->{ip_map}{$_[0]->ip_address} },
            domain              => 'domain',
            #type  (varchar(32))            enum([qw/ subdomain vhost /])
            #parent_domain_id  (int(11))
            #vhost_type  (varchar(32))
            document_root       => sub { "/var/www/" . $_[0]->domain },
            #system_user  (varchar(255))
            #system_group  (varchar(255))
            hd_quota            => mapquota('quota'),
            traffic_quota       => mapquota('real_traffic'),
            cgi                 => booltoyn('cgi'),
            ssi                 => booltoyn('ssi'),
            suexec              => \$def->{suexec},
            #errordocs  (tinyint(1))
            #is_subdomainwww  (tinyint(1))
            #subdomain  (enum('none','www','*'))
            php                 => booltoyn('php'),
            ruby                => \$def->{ruby},
            #redirect_type  (varchar(255))
            #redirect_path  (varchar(255))
            ssl                 => booltoyn('ssl'),
            #ssl_state  (varchar(255))
            #ssl_locality  (varchar(255))
            #ssl_organisation  (varchar(255))
            #ssl_organisation_unit  (varchar(255))
            #ssl_country  (varchar(255))
            #ssl_domain  (varchar(255))
            #ssl_request  (mediumtext)
            #ssl_cert  (mediumtext)
            #ssl_bundle  (mediumtext)
            #ssl_action  (varchar(16))
            #stats_password  (varchar(255))
            #stats_type  (varchar(255))
            allow_override      => \$def->{allow_override},
            #apache_directives  (mediumtext)
            #php_open_basedir  (mediumtext)
            #custom_php_ini  (mediumtext)
            #backup_interval  (varchar(255))
            #backup_copies  (int(11))
            active              => \'y',
            traffic_quota_lock  => \$def->{traffic_quota_lock},
        };
    }

    sub booltoyn {
        my $attr = shift;
        return sub {
            return shift->$attr ? 'y' : 'n';
        }
    }

    sub mapquota {
        my $attr = shift;
        return sub {
            my $q = shift->$attr;
            return $q ? $q : -1;
        }
    }
}
