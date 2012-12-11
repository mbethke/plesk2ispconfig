use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Mail::Box with P2I::Role::Password {
    use MooseX::Types::Moose ':all';
    use Moose::Util::TypeConstraints;
    use P2I::Types qw/ MysqlBool Bigint /;

    has [qw/ mail_name login domain /] => (is => 'ro', isa => Str, required => 1);
    has [qw/ redir_addr realname /   ] => (is => 'ro', isa => Maybe[Str]);
    has [qw/ postbox redirect mail_group autoresponder spamfilter /] =>
        (is => 'ro', isa => MysqlBool, coerce => 1);
    has virusfilter => (is => 'ro', isa => enum([qw/ none incoming outgoing any /]));
    has quota       => (is => 'ro', isa => Bigint);
# perm_id       | int(10) unsigned

    method email { return $self->mail_name . '@' . $self->domain; }
}

