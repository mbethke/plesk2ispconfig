use Modern::Perl;
use MooseX::Declare;

class P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ IPAddress /;
    use P2I::PleskDB;
    use Scalar::Util qw/ looks_like_number /;
    use Carp;

    has config      => (is => 'ro', isa => 'P2I::Config',  required => 1);
    has db          => (is => 'ro', isa => 'P2I::PleskDB', required => 1);
    has soap        => (
        is      => 'ro',
        isa     => 'P2I::ISPconfigSOAP',
        required=> 1,
        handles => [ qw/ soap_call soapize / ],
    );

    # Make a SOAP call, automatically converting all arguments via soapize()
    method lather(Str $method, @params) {
        $self->soap_call($method, map { $self->soapize($_) } @params);
    }

    method get_client_id(Str $login) {
        my $client = $self->lather('client_get_by_username', $login);
        croak("No client for for login `$login'") unless $client;
        return $client->{client_id};
    }

    # method get_server_id(IPAddress $ip) { TODO why does this break?
    method get_server_id(Str $ip) {
        my $servers = $self->lather('server_get_serverid_by_ip', $ip);
        die "Server with address $ip not found" unless @$servers;
        return $servers->[0]{server_id};
    }

    method _map_fields($src, $dst, $map) {
        while(my ($dattr, $sattr) = each %$map) {
            my $val;
            for($sattr) {
                when(undef)                 { $val = undef };
                when('CODE' eq ref)         { $val = $_->($src) };
                when('SCALAR' eq ref)       { $val = $$_ };
                when(looks_like_number($_)) { $val = $_ };
                when(!length)               { $val = $_ };
                default                     { $val = $src->$_ };
            }
            $dst->{$dattr} = $val;
        }
    }
}

