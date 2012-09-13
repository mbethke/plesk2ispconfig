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

    has db          => (is => 'ro', isa => 'P2I::PleskDB',       required => 1);
    has soap        => (is => 'ro', isa => 'P2I::ISPconfigSOAP', required => 1);

    method soap_call { $self->soap->soap_call(@_) }

    method _map_fields($src, $dst, $map) {
        while(my ($dattr, $sattr) = each %$map) {
            my $val;
            for($sattr) {
                when(undef)                 { $val = undef };
                when(looks_like_number($_)) { $val = $sattr };
                when(!length)               { $val = $sattr };
                default                     { $val = $src->$sattr };
            }
            $dst->{$dattr} = $val;
        }
    }
}

