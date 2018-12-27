use Modern::Perl;
use MooseX::Declare;

class P2I::Data::DNS::Record {
    use MooseX::Types::Moose ':all';

    has [qw/ type host val opt time_stamp client_login domain /] => (is => 'ro', isa => Str, required => 1);
}

