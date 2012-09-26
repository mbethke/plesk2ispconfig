#===============================================================================
#
#         FILE: Converter.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/29/2012 07:06:08 PM
#     REVISION: ---
#===============================================================================
use Modern::Perl;
use MooseX::Declare;

class P2I::Converter {
    use P2I::PleskDB;
    use Scalar::Util qw/ looks_like_number /;
    use Data::Dumper;

    has db          => (is => 'ro',                              required => 1);
    has soap        => (is => 'ro', isa => 'P2I::ISPconfigSOAP', required => 1);

    sub soap_call { shift->soap->soap_call(@_) }

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
                soap    => $self->soap
            )->convert;
        }
    }

    method soapize($data) { $self->soap->soapize($data) }

    method _map_fields($src, $dst, $map) {
        while(my ($dattr, $sattr) = each %$map) {
            my $val;
            for($sattr) {
                when(undef)                 { $val = undef };
                when(''  ne ref)            { $val = $$_ };
                when(looks_like_number($_)) { $val = $_ };
                when(!length)               { $val = $_ };
                default                     { $val = $src->$_ };
            }
            $dst->{$dattr} = $val;
        }
    }
}

