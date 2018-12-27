use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Mail::Catchall {
    use MooseX::Types::Moose ':all';

    has [qw/ login domain mail_name /] => (is => 'ro', isa => Str, required => 1);

    method email      { return $self->mail_name; } #$self->mail_name . '@' . $self->domain; }
}

