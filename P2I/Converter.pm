use Modern::Perl;
use MooseX::Declare;

class P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::PleskDB;
    use Scalar::Util qw/ looks_like_number /;
    use Data::Dumper;

    has config      => (is => 'ro', isa => HashRef,              required => 1);
    has db          => (is => 'ro',                              required => 1);
    has soap        => (
        is      => 'ro',
        isa     => 'P2I::ISPconfigSOAP',
        required=> 1,
        handles => [ qw/ soap_call soapize / ],
    );

    method lather(Str $method, @params) {
        $self->soap_call($method, map { $self->soapize($_) } @params);
    }

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

