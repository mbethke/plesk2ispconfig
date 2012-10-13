use Modern::Perl;
use MooseX::Declare;

class P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ IPAddress /;
    use P2I::PleskDB;
    use Scalar::Util qw/ looks_like_number /;
    use Data::Dumper;

    has config      => (is => 'ro', isa => 'P2I::Config', required => 1);
    has db          => (is => 'ro',                       required => 1);
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

    # This is the main entry point. Loads all converter modules and runs
    # ->convert on them.
    method run(@modules) {
        for my $mod (@modules) {
            # TODO use some  plugin module here
            eval  <<"EOUSE";
                use P2I::Converter::$mod;
                use P2I::DB::$mod;
EOUSE
            $@ and die;

            "P2I::Converter::$mod"->new(
                db      => "P2I::DB::$mod"->new(db => $self->db),
                soap    => $self->soap,
                config  => $self->config,
            )->convert;
        }
    }

    method get_client_id(Str $login) {
        my $client = $self->lather('client_get_by_username', $login);
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

