use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Websites extends P2I::Converter with P2I::Role::Database {
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
        my $added = $self->lather('sites_web_domain_get' ,$newid);
        my $sync = $self->config->sync; 
        $self->add_to_script(sprintf "rsync -zav -e'ssh -p%d' '%s\@%s:%s/httpdocs/' '%s/web/'\n",
            $sync->{port}, $sync->{user}, $sync->{host}, $site->home,
            $added->{document_root}
        );
        $self->_check_site_db($client_id, $site->home);
        return $added;
    }

    # This will try and determine the database name and credentials used for the site. If found, prints
    # commands to recrate the database and dump/restore its contents to the script to execute later.
    # Currently only supports Drupal sites
    method _check_site_db(Int $client_id, Str $home) {
        $self->dbg("\t" . __PACKAGE__ . "::_check_site_db($client_id, $home)");
        my $sync = $self->config->sync; 
        my $cmd = sprintf q[ssh -p%d %s@%s "grep 2>/dev/null --no-filename '^\$db_url' %s/http{,s}docs/sites/default/settings.php"],
        @$sync{qw/ port user host /}, $home;
        my $res = qx[$cmd]; # syntax highlighter workaround
        # 'mysqli://mueller:xxxpassxxx@localhost/mueller_db'
        $res =~ m!mysqli?://(?<user>\w+):(?<password>[^\@]+)\@(?<host>\w+)/(?<database>\w+)!;
        if(keys %+) {
            $self->_add_database($client_id, {%+});
            #$self->add_to_script(sprintf q[mysql -uroot -p -e"CREATE DATABASE '%s'"\n], $+{database});
            #$self->add_to_script(
            #    sprintf q[mysql -uroot -p -e"GRANT ALL PRIVILEGES ON %s.* TO '%s'@localhost IDENTIFIED BY '%s\n'],
            #    $+{database}, $+{user}, $+{password});
            $self->add_to_script(
                sprintf qq[ssh -p%d %s@%s "mysqldump -u%s -p'%s' %s | bzip2" | bzcat | mysql -u%s -p'%s' -D%s\n],
                @$sync{qw/ port user host /}, $+{user}, $+{password}, $+{database}, $+{user}, $+{password}, $+{database});
        } else {
            print STDERR "Warning: no database settings found for this site (home: $home), please adjust manually!\n";
        }
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
            is_subdomainwww     => 1,   # TODO how to determine? 
            subdomain           => \'', # TODO enum('none','www','*'))
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
