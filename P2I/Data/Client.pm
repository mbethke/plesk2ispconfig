use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Client {
    use MooseX::Types::DateTime::ButMaintained qw/ DateTime /;

    has id           => (is => 'ro', isa => 'Int');
    has parent_id    => (is => 'ro', isa => 'Maybe[Int]');
    has type         => (is => 'ro', isa => 'Str');
    has cr_date      => (is => 'ro', isa => 'P2I::MysqlDateTime', coerce => 1);
    has cname        => (is => 'ro', isa => 'Maybe[Str]');
    has pname        => (is => 'ro', isa => 'Maybe[Str]');
    has login        => (is => 'ro', isa => 'Maybe[Str]');
    has account_id   => (is => 'ro', isa => 'Maybe[Int]');
    has status       => (is => 'ro', isa => 'Int');
    has phone        => (is => 'ro', isa => 'Maybe[Str]');
    has fax          => (is => 'ro', isa => 'Maybe[Str]');
    has email        => (is => 'ro', isa => 'Maybe[Str]');
    has address      => (is => 'ro', isa => 'Maybe[Str]');
    has city         => (is => 'ro', isa => 'Maybe[Str]');
    has state        => (is => 'ro', isa => 'Maybe[Str]');
    has pcode        => (is => 'ro', isa => 'Maybe[Str]');
    has country      => (is => 'ro', isa => 'Maybe[Str]');
    has locale       => (is => 'ro', isa => 'Str');
    has limits_id    => (is => 'ro', isa => 'Maybe[Int]');
    has params_id    => (is => 'ro', isa => 'Maybe[Int]');
    has perm_id      => (is => 'ro', isa => 'Maybe[Int]');
    has pool_id      => (is => 'ro', isa => 'Maybe[Int]');
    has logo_id      => (is => 'ro', isa => 'Maybe[Int]');
    has tmpl_id      => (is => 'ro', isa => 'Maybe[Int]');
    has sapp_pool_id => (is => 'ro', isa => 'Maybe[Int]');
    has guid         => (is => 'ro', isa => 'Str');
    has overuse      => (is => 'ro', isa => 'P2I::MysqlBool', coerce => 1);
    has password     => (is => 'ro', isa => 'Maybe[Str]');
}

