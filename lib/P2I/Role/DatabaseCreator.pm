use Modern::Perl;
use MooseX::Declare;

role P2I::Role::DatabaseCreator {
    requires qw/ config get_named_server lather /;
    use Carp;
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';

    has web_server_id => (is => 'ro', isa => Int, lazy => 1, builder => '_build_web_server_id');
    has db_server_id  => (is => 'ro', isa => Int, lazy => 1, builder => '_build_db_server_id');
    has edit_script   => (is => 'ro', isa => Str,            builder => '_build_edit_script');

    method add_database(Int $client_id, HashRef $credentials) {
        defined $credentials->{$_} or croak "Field `$_' missing in credentials"
            for(qw/ database user new_user_id new_database new_user/);
        my %params = (
            server_id        => $self->db_server_id,
            type             => 'mysql',     # TODO nothing else supported yet
            database_name    => $credentials->{new_database},
            database_user    => $credentials->{new_user},
            database_user_id => $credentials->{new_user_id},
            database_ro_user_id => '0',
            database_charset => 'UTF8',      # TODO always?
            remote_access    => 'y',
            remote_ips       => $self->config->server('db'),
            active           => 'y', 
        );
        $self->dbg(__PACKAGE__ . "::_add_database($client_id, ".$params{database_name}.
            '/'.$params{database_user}.': ' . $params{database_user_id} . ')');
        if($self->web_server_id eq $self->db_server_id) {
            # Web and DB server are on the same host, so overwrite these settings
            $params{remote_access} = 'n';
            $params{remote_ips}    = '';
        }
        $self->lather('sites_database_add', $client_id, \%params);
        
        # If sync parameters are defined, add dump/restore command to script
        my $sync = $self->config->sync;
        if($sync) {
            $self->add_to_script(
                sprintf qq[ssh -p%d %s@%s "mysqldump -u%s -p'%s' %s | gzip" | ].
                qq[zcat | mysql -u%s -p'%s' -D%s\n],
                @$sync{qw/ port user host /},
                @$credentials{qw/     user password     database /},
                @$credentials{qw/ new_user password new_database /},
            );

            # If old and new database names are different, add some attempt
            # at automatic editing to the script.
            if($credentials->{database} ne $credentials->{new_database}) {
                my $script = $self->edit_script;
                my %replace = (
                    CLIENTID => $client_id,
                    OLD_DB   => $credentials->{database},
                    NEW_DB   => $credentials->{new_database},
                    OLD_USER => $credentials->{user},
                    NEW_USER => $credentials->{new_user},
                    PASSWORD => $credentials->{password},
                );
                # Process the above expandos
                $script =~ s/\${$_}/$replace{$_}/ for keys %replace;
                $self->add_to_script($script);
            }
        }
    }

    method add_database_user(Int $client_id, HashRef $credentials) {
        defined $credentials->{$_} or croak "Field `$_' missing in credentials"
            for(qw/ password new_user/);
        my %params = (
            server_id        => $self->db_server_id,
            database_user    => $credentials->{new_user},
            database_password=> $credentials->{password},
        );
        $self->dbg(__PACKAGE__ . "::_add_database_user($client_id, ".$params{database_user}.
            '/'.$params{database_password}.')');
        $self->lather('sites_database_user_add', $client_id, \%params);
    }

    method _build_web_server_id { return $self->get_named_server('web'); }
    method _build_db_server_id { return $self->get_named_server('db'); }
    method _build_edit_script {
        my @script = <__PACKAGE__::DATA>;
        close DATA;
        return join('', @script);
    }
}

__DATA__
if [ "" == "$CLIENTPATH_%{CLIENTID}" ]
then
    echo >&2 "WARNING: cannot change database settings for %{OLD_DB}"
    echo >&2 "due to missing client path. Run the Websites module before."
else
    # Drupal
    find "$CLIENTPATH_%{CLIENTID}" -type f -name settings.php | grep "sites/default/settings.php" | while read f
    do
        echo >&2 "Editing user and database settings in Drupal config '$f', backup in $f.bak"
        # $db_url = 'mysqli://user:pass@host/database';
        sed -i.bak -e's!://${OLD_USER}:${PASSWORD}@[^/]\+/${OLD_DB}!://${NEW_USER}:${PASSWORD}@[^/]\+/${NEW_DB}!' "$f"
    done
    # WordPress
    find "$CLIENTPATH_%{CLIENTID}" -type f -name wp-config.php | while read f
    do
        echo >&2 "Editing user and database settings in WordPress config '$f', backup in $f.bak"
        # Database details in separate defines...
        sed -i.bak -e's!define('"'"'DB_NAME'"'"', '"'"'%{OLD_DB}'"'"'!define('"'"'DB_NAME'"'"', '"'"'%{NEW_DB}'"'"'!' "$f"
        sed -i.bak -e's!define('"'"'DB_USER'"'"', '"'"'%{OLD_USER}'"'"'!define('"'"'DB_USER'"'"', '"'"'%{NEW_USER}'"'"'!' "$f"
    done
fi
