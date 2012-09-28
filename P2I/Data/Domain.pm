use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Domain {
    use MooseX::Types::Moose ':all';

    has [qw/ domain_name login /] => (is => 'ro', isa => Str);
}

