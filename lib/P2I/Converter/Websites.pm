use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Websites extends P2I::Converter with P2I::Role::DatabaseCreator {
    use MooseX::Types::Moose ':all';
    use P2I::Data::Website;
    use P2I::Data::WebSubdomain;
    use Data::Dumper;

    method convert {
        my $db = $self->db;
        my $site;

        $self->dbg(__PACKAGE__ . '::convert');

        for my $id ($db->list_website_ids) {
            $site           = P2I::Data::Website->new($db, $id);
            my $client_id   = $self->get_client_id($site->client_login);
            my $added = $self->_create_site($client_id, $site);
            my $parent_domain_id = $added->{parent_domain_id};

            # Create all subdomains
            for my $subid ($db->get_subdomains_for_id($id)) {
                $site = P2I::Data::WebSubdomain->new($db, $subid);
                my $added = $self->_create_site($client_id, $site);
                #print STDERR "\tAdded with documentroot: $added->{document_root}\n";
            }
        }
    }

    method _create_site(Int $client_id, $site) {
        my $data = {};
        $self->_map_fields($site, $data, $self->_field_map);
        $self->dbg("\tCreating site: $data->{domain}");
        my $newid = $self->lather('sites_web_domain_add', $client_id, $data);
        unless(defined $newid) {
            $self->dbg("\tSite creation failed");
            return;
        }
        my $added = $self->lather('sites_web_domain_get' ,$newid);
        my $sync = $self->config->plesk->{sync};
        # $added will be undef if --robust is on and there was an error
        return unless $added;
        if($site->sub_domain) {
            # Subdomains come from a different directory in Plesk
            $self->add_to_script(sprintf "rsync -za --delete -e'ssh -p%d' '%s\@%s:%s/subdomains/%s/httpdocs/' '%s/web/'\n",
                $sync->{port}, $sync->{user}, $sync->{host}, $site->home, $site->sub_domain,
                $added->{document_root}
            );
        } else {
            # This is a regular domain
            $self->add_to_script(sprintf "rsync -za -e'ssh -p%d' '%s\@%s:%s/httpdocs/' '%s/web/'\n",
                $sync->{port}, $sync->{user}, $sync->{host}, $site->home,
                $added->{document_root}
            );
        }
        $self->add_to_script(sprintf "chown --reference='%s/tmp' '%s'\n",
            $added->{document_root}, $added->{document_root}
        );
        $self->add_to_script(sprintf "chmod o+rx '%s/web'\n", $added->{document_root});
        return $added;
    }

    method _field_map {
        my $def = $self->config->defaults('web');
        return {
            server_id           => \$self->web_server_id,
            ip_address          => sub { $def->{ip_map}{$_[0]->ip_address} },
            domain              => 'domain',
            #type  (varchar(32))            enum([qw/ subdomain vhost /])
            vhost_type          => \'name',
            hd_quota            => mapquota('quota'),
            traffic_quota       => mapquota('real_traffic'),
            cgi                 => booltoyn('cgi'),
            ssi                 => booltoyn('ssi'),
            suexec              => \$def->{suexec},
            errordocs           => 1,
            is_subdomainwww     => 0,   # TODO how to determine? 
            subdomain           => \'www', # TODO enum('none','www','*'))
            php                 => booltoyn('php'),
            ruby                => \$def->{ruby},
            redirect_type       => \'',
            redirect_path       => \'',
            ssl                 => booltoyn('ssl'),
            ssl_state           => \'',
            ssl_locality        => \'',
            ssl_organisation    => \'',
            ssl_organisation_unit => \'',
            ssl_country         => \'',
            ssl_domain          => \'',
            ssl_request         => \'',
            ssl_cert            => \'',
            ssl_bundle          => \'',
            ssl_action          => \'',
            stats_password      => \'', # TODO auto-generate and mail to client?
            stats_type          => \$def->{stats_type},
            allow_override      => \$def->{allow_override},
            apache_directives   => \'',
            php_open_basedir    => \'',  # automatically filled in
            custom_php_ini      => \'',
            backup_interval     => \'',
            backup_copies       => \1,
            active              => \'y',
            traffic_quota_lock  => \$def->{traffic_quota_lock},
            type                => \'vhost',
        };
    }

    # Create a closure that gets a boolean attribute and returns a
    # 'y' or 'n' character
    sub booltoyn {
        my $attr = shift;
        return sub {
            return shift->$attr ? 'y' : 'n';
        }
    }

    # Create a closure that takes a quota attribute and returns it.
    # Returns -1 instead of 0 for "unlimited".
    sub mapquota {
        my $attr = shift;
        return sub {
            my $q = shift->$attr;
            return $q ? $q : -1;
        }
    }
}
