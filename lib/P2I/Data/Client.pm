use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Client with P2I::Role::Password {
    use MooseX::Types::DateTime::ButMaintained qw/ DateTime /;
    use MooseX::Types::Moose ':all';
    use P2I::Types ':all';

    has id           => (is => 'ro', isa => Int, required => 1);
    has parent_id    => (is => 'ro', isa => Maybe[Int], required => 1);
    has type         => (is => 'ro', isa => Str, required => 1);
    has cr_date      => (is => 'ro', isa => MysqlDateTime, coerce => 1, required => 1);
    has cname        => (is => 'ro', isa => Maybe[Str], required => 1);
    has pname        => (is => 'ro', isa => Maybe[Str], required => 1);
    has login        => (is => 'ro', isa => Maybe[Str], required => 1);
    has account_id   => (is => 'ro', isa => Maybe[Int], required => 1);
    has status       => (is => 'ro', isa => Int, required => 1);
    has phone        => (is => 'ro', isa => Maybe[Str], required => 1);
    has fax          => (is => 'ro', isa => Maybe[Str], required => 1);
    has email        => (is => 'ro', isa => Maybe[Str], required => 1);
    has address      => (is => 'ro', isa => Maybe[Str], required => 1);
    has city         => (is => 'ro', isa => Maybe[Str], required => 1);
    has state        => (is => 'ro', isa => Maybe[Str], required => 1);
    has pcode        => (is => 'ro', isa => Maybe[Str], required => 1);
    has country      => (is => 'ro', isa => Maybe[Str], required => 1);
    has locale       => (is => 'ro', isa => Str, required => 1);
    has limits_id    => (is => 'ro', isa => Maybe[Int], required => 1);
    has params_id    => (is => 'ro', isa => Maybe[Int], required => 1);
    has perm_id      => (is => 'ro', isa => Maybe[Int], required => 1);
    has pool_id      => (is => 'ro', isa => Maybe[Int], required => 1);
    has logo_id      => (is => 'ro', isa => Maybe[Int], required => 1);
    has tmpl_id      => (is => 'ro', isa => Maybe[Int], required => 1);
    has sapp_pool_id => (is => 'ro', isa => Maybe[Int], required => 1);
    has guid         => (is => 'ro', isa => Str, required => 1);
    has overuse      => (is => 'ro', isa => MysqlBool, coerce => 1, required => 1);
    has permissions  => (is => 'ro', isa => HashRef);
}
#Permissions
# allow_ftp_backups allow_local_backups change_limits cp_access create_domains
# manage_anonftp manage_crontab manage_dashboard manage_dns manage_domain_aliases
# manage_ftp_password manage_log manage_maillists manage_not_chroot_shell
# manage_performance manage_phosting manage_quota
# manage_sh_access manage_spamfilter manage_subdomains manage_virusfilter
# manage_webapps manage_webstat remote_access_interface select_db_server
# site_builder


