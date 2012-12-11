use Modern::Perl;
use MooseX::Declare;

role P2I::Role::Database {
    requires [qw/ config get_named_server lather /];
    use Carp;
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';

    has web_server_id => (is => 'ro', isa => Int, lazy => 1, builder => '_build_web_server_id');
    has db_server_id =>  (is => 'ro', isa => Int, lazy => 1, builder => '_build_db_server_id');

    method _add_database(Int $client_id, HashRef $credentials) {
        croak "Field `$_' missing in credentials" unless $credentials->{$_}
            for(qw/ database user password /);
        my %params = (
            server_id        => $self->db_server_id,
            type             => 'mysql',     # TODO nothing else supported yet
            database_name    => $credentials->{database},
            database_user    => $credentials->{user},
            database_password=> $credentials->{password},
            database_charset => 'UTF8',      # TODO always?
            remote_access    => 'y',
            remote_ips       => $self->config->server('db'),
            active           => 'y', 
        );
        $self->dbg(__PACKAGE__ . "::_add_database($client_id, $credentials->{database}/$credentials->{user})");
        if($self->web_server_id eq $self->db_server_id) {
            # Web and DB server are on the same host, so overwrite these settings
            $params{remote_access} = 'n';
            $params{remote_ips}    = '';
        }
        $self->lather('sites_database_add', $client_id, \%params);
    }

    method _build_web_server_id { return $self->get_named_server('web'); }
    method _build_db_server_id { return $self->get_named_server('db'); }
}

