use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Domain {
    has [qw/ domain_name login /] => (is => 'ro', isa => 'Str');
}

