use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Users extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use Moose::Util::TypeConstraints;
    use P2I::Data::Users::FTP;
    use Carp;
    use Data::Dumper;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });
    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_users_server_id');

    method convert {
        my %clients;

        $self->dbg(__PACKAGE__ . '::convert');

        P2I::Data::Users::FTP->cipher($self->config->cipher);

        # Convert extra FTP users
        for my $ftp ($self->db->get_ftpusers) {
            $clients{$ftp->client_login} //= $self->get_client_id($ftp->client_login);
            $self->dbg("\tConverting FTP user ", $ftp->user, " (userID $clients{$ftp->client_login})");
            $self->_create_ftpuser($clients{$ftp->client_login}, $ftp, undef);
        }

        # Convert core FTP users (system users)
        for my $user ($self->db->get_sysusers) {
            $clients{$user->client_login} //= $self->get_client_id($user->client_login);
            $self->dbg("\tConverting system user ", $user->user, " (userID $clients{$user->client_login})");
            $self->_create_ftpuser($clients{$user->client_login}, $user, undef);
        }

        # Convert web users to FTP account.
        for my $web ($self->db->get_webusers) {
            $clients{$web->client_login} //= $self->get_client_id($web->client_login);
            $self->dbg("\tConverting web user ", $web->user, " (userID $clients{$web->client_login})");
            $self->_create_webuser($clients{$web->client_login}, $web);
        }

    }

    method _create_ftpuser(Int $client_id, $ftp, $dir) {
        my %data;
        $self->dbg("\tCreating FTP user ", $ftp->user);
        $self->_map_fields($ftp, \%data, $self->_field_map);
        my $site_id = $self->get_ftp_userdata($ftp->client_login, $ftp->domain);
	$ftp->{domain_id} = $site_id->{domain_id};
        $data{dir} = $dir ? $dir : $self->_get_webdir($client_id, $ftp, $self->config->defaults('users')->{userdir});
        $data{gid} = "client$client_id";
        $data{uid} = "web$site_id->{domain_id}"; # site_id is not available here!!!
        $data{parent_domain_id} = $site_id->{domain_id};
        $self->lather('sites_ftp_user_add', $client_id, \%data);
    }

    method _create_webuser(Int $client_id, $web) {
	return; # Policy is not to create web users
        my $dir = $self->_get_webuser_dir($client_id, $web, $self->config->defaults('users')->{webuserdir});
        $self->_create_ftpuser($client_id, $web, $dir);
        my $sync = $self->config->plesk->{sync};
        $self->add_to_script(sprintf "rsync -za -e'ssh -p%d' %s\@%s:%s/ %s/\n",
            $sync->{port}, $sync->{user}, $sync->{host}, $web->home,
            $dir
        );
    }

    method _build_users_server_id {
        return $self->get_server_id($self->config->server('web'));
    }

    # TODO move this to P2I::Data::Users::FTP
    method _field_map {
        my $def = $self->config->defaults('users');
        return {
            username                 => 'user',
            password                => 'password',
            uid                     => \'',
            gid                     => \'', # Filled in later
            dir                     => \'', # Filled in later
#            parent_domain_id        => 'domain_id',
            active                  => \'y',
            quota_size              => \-1,
            quota_files             => \-1,
            ul_ratio                => \-1,
            dl_ratio                => \-1,
            ul_bandwidth            => \-1,
            dl_bandwidth            => \-1,
            server_id               => sub { \$self->server_id },
        };
    }

    method _get_webdir(Int $client_id, $f, Str $pattern) {
        local $_ = $pattern;
        s/%d/$f->domain/eg;
        s/%a/$f->{domain_id}/eg;
        s/%c/$client_id/eg;
        return $_;
    }

    method _get_webuser_dir(Int $client_id, $u, Str $pattern) {
        local $_ = $pattern;
        s/%d/$u->domain/eg;
        s/%a/$u->user/eg;
        s/%c/$client_id/eg;
        return $_;
    }

    method get_ftp_userdata(Str $login, $domain) {
        my $client = $self->lather('client_get_by_username', $login);
        croak("No client for for login `$login'") unless $client;
        my $sites = $self->lather('client_get_sites_by_user', $client->{userid}, $client->{sys_groupid});
        croak "No sites for $login (" . $client->{sys_userid} . "/" . $client->{sys_groupid} . ") found" unless @$sites;
        foreach my $site (@$sites) {
            if ($site->{domain} eq $domain) {
                return {
                    domain => $site->{domain},
                    domain_id => $site->{domain_id},
                    client_id => $client->{client_id},
                };
            }
	}
        croak("No site for $login with domain $domain found");
    }
}
