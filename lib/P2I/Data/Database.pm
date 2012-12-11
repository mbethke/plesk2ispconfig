use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Database with P2I::Role::Password {
    use MooseX::Types::Moose ':all';

    has [qw/ name type login /] => (is => 'ro', isa => Str, required => 1);
    has [qw/ server_id /   ] => (is => 'ro', isa => Int);
}

