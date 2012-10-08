use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Mail::Alias {
    use MooseX::Types::Moose ':all';
    use Moose::Util::TypeConstraints;
    use P2I::Types qw/ MysqlBool Bigint /;

    has [qw/ mail_name login domain alias /] => (is => 'ro', isa => Str, required => 1);

    method full_alias { return $self->alias     . '@' . $self->domain; }
    method email      { return $self->mail_name . '@' . $self->domain; }
}

