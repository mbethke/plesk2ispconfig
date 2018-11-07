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
            my $added = $self->_create_site($client_id, $site, 0, undef);
            my $domain_id = $added->{domain_id};

            # Create all subdomains
            for my $subid ($db->get_subdomains_for_id($id)) {
                $site = P2I::Data::WebSubdomain->new($db, $subid);
                my $site = $self->_create_site($client_id, $site, $domain_id, $added->{document_root});
                #$self->dbg("\tAdded with documentroot: $site->{document_root}\n");
            }
        }
    }

    method _create_site(Int $client_id, $site, Int $parent_domain_id, $docroot) {
        my $data = { };
        $self->_map_fields($site, $data, $self->_field_map);
        $data->{parent_domain_id} = $parent_domain_id;
        if ($parent_domain_id) {
            $data->{type} = 'vhostsubdomain';
            #$data->{subdomain} = $site->subdomain;
            $data->{web_folder} = $site->subdomain; # "subdomains/" . $site->subdomain;
            #$data->{domain} = $site->parent_domain;
            $data->{system_user} = "web$parent_domain_id";
            $data->{system_group} = "client$client_id";
	    $data->{document_root} = $docroot; # Subdomain shares the parent domain's document root folders
        }
        $self->dbg("\tCreating site: $data->{domain} ($data->{type}: $parent_domain_id) for client $client_id");
        my $newid = $self->lather($parent_domain_id ? 'sites_web_vhost_subdomain_add' : 'sites_web_domain_add', $client_id, $data);
        unless(defined $newid) {
            $self->dbg("\tSite creation failed");
            return;
        }
        my $added = $self->lather('sites_web_domain_get' , $parent_domain_id || $newid);
        my $sync = $self->config->plesk->{sync};
        # $added will be undef if --robust is on and there was an error
        return unless $added;
	# rsync the web folder contents, including Plesk stats, and fix ownership & permissions
	my $dest = sprintf "%s/%s", $added->{document_root}, $parent_domain_id ? $data->{web_folder} : 'web';
	my $cmds = sprintf "echo 'Copy web site %s'\n", $data->{domain};
        $cmds .= sprintf "rsync -za -e'ssh -p%d' %s\@%s:%s/ %s/\n",
            $sync->{port}, $sync->{user}, $sync->{host}, $site->www_root,
            $dest
        ;
	# Fix ownership & permissions as rsync may make everything owned by root
        $cmds .= sprintf "chown -R --reference=%s/tmp %s\n",
            $added->{document_root}, $dest
        ;
        
        unless ($parent_domain_id) {
            $cmds .= sprintf "chmod o+rx %s/web\n", $added->{document_root};
            # Set an environment variable pointing to the web space root for later use by the database module
            $cmds .= sprintf qq[CLIENTPATH_%d="%s/"\n], $client_id, $dest;
        }
        $self->add_to_script($cmds);
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
            http_port           => 80,
            https_port          => 443,
            errordocs           => 1,
            is_subdomainwww     => 0,   # TODO how to determine? 
            subdomain           => \'www', # TODO enum('none','www','*'))
            php                 => booltoyn('php'),
            php_fpm_use_socket  => \'y',
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
            ssl_request         => 'ssl_csr',
            ssl_cert            => 'ssl_cert',
            ssl_key             => 'ssl_key',
            ssl_bundle          => 'ssl_cacert',
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
            pm                  => \'ondemand',
            pm_process_idle_timeout => 10,
            pm_max_requests     => 0,
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
