use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Users::FTP with P2I::Role::Password {
    use MooseX::Types::Moose ':all';

    has [qw/ user home client_login domain /] => (is => 'ro', isa => Str, required => 1);
    has [qw/ server_id /   ] => (is => 'ro', isa => Int);
}

