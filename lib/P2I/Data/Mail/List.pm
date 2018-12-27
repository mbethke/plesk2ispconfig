use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Mail::List with P2I::Role::Password {
    use MooseX::Types::Moose ':all';

    has [qw/ name domain login email /] => (is => 'ro', isa => Str, required => 1);

    #method email      { return $self->mail_name . '@' . $self->domain; }
}

