#===============================================================================
#
#         FILE: Client.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/29/2012 01:37:17 PM
#     REVISION: ---
#===============================================================================

use Moose; 
use MooseX::Declare;
use P2I::Client;
use P2I::PleskDB;
use P2I::ISPconfigSOAP;

class P2I::Converter::Client {
    has '+field_map' => ( default => 
            {
                'company_name' => 'awesomecompany',
                'contact_name' => 'name',
                'customer_no' => '1',
                'vat_id' => '1',
                'street' => 'fleetstreet',
                'zip' => '21337',
                'city' => 'london',
                'state' => 'bavaria',
                'country' => 'UK',
                'telephone' => '123456789',
                'mobile' => '987654321',
                'fax' => '546718293',
                'email' => 'e@mail.int',
                'internet' => '',
                'icq' => '111111111',
                'notes' => 'awesome',
                'dafault_mailserver' => 1,
                'limit_maildomain' => -1,
                'limit_mailbox' => -1,
                'limit_mailalias' => -1,
                'limit_mailaliasdomain' => -1,
                'limit_mailforward' => -1,
                'limit_mailcatchall' => -1,
                'limit_mailrouting' => 0,
                'limit_mailfilter' => -1,
                'limit_fetchmail' => -1,
                'limit_mailquota' => -1,
                'limit_spamfilter_wblist' => 0,
                'limit_spamfilter_user' => 0,
                'limit_spamfilter_policy' => 1,
                'default_webserver' => 1,
                'limit_web_ip' => '',
                'limit_web_domain' => -1,
                'limit_web_quota' => -1,
                'web_php_options' => 'no,fast-cgi,cgi,mod,suphp',
                'limit_web_subdomain' => -1,
                'limit_web_aliasdomain' => -1,
                'limit_ftp_user' => -1,
                'limit_shell_user' => 0,
                'ssh_chroot' => 'no,jailkit,ssh-chroot',
                'limit_webdav_user' => 0,
                'default_dnsserver' => 1,
                'limit_dns_zone' => -1,
                'limit_dns_slave_zone' => -1,
                'limit_dns_record' => -1,
                'default_dbserver' => 1,
                'limit_database' => -1,
                'limit_cron' => 0,
                'limit_cron_type' => 'url',
                'limit_cron_frequency' => 5,
                'limit_traffic_quota' => -1,
                'limit_client' => 0,
                parent_client_id => 'parent_id'
                'username' => 'guy',
                'password' => 'brush',
                'language' => 'en',
                'usertheme' => 'default',
                'template_master' => 0,
                'template_additional' => '',
                'created_at' => 0,
    has parent_id    => (is => 'ro', isa => 'Int');
    has type         => (is => 'ro', isa => 'Str');
    has cr_date      => (is => 'ro', isa => 'DateTime', writer => '_set_cr_date');
    has cname        => (is => 'ro', isa => 'Str');
    has pname        => (is => 'ro', isa => 'Str');
    has login        => (is => 'ro', isa => 'Str');
    has account_id   => (is => 'ro', isa => 'Int');
    has status       => (is => 'ro', isa => 'Int');
    has phone        => (is => 'ro', isa => 'Str');
    has fax          => (is => 'ro', isa => 'Str');
    has email        => (is => 'ro', isa => 'Str');
    has address      => (is => 'ro', isa => 'Str');
    has city         => (is => 'ro', isa => 'Str');
    has state        => (is => 'ro', isa => 'Str');
    has pcode        => (is => 'ro', isa => 'Str');
    has country      => (is => 'ro', isa => 'Str');
    has locale       => (is => 'ro', isa => 'Str');
    has limits_id    => (is => 'ro', isa => 'Int');
    has params_id    => (is => 'ro', isa => 'Int');
    has perm_id      => (is => 'ro', isa => 'Int');
    has pool_id      => (is => 'ro', isa => 'Int');
    has logo_id      => (is => 'ro', isa => 'Int');
    has tmpl_id      => (is => 'ro', isa => 'Int');
    has sapp_pool_id => (is => 'ro', isa => 'Int');
    has guid         => (is => 'ro', isa => 'Str');
    has overuse      => (is => 'ro', isa => 'Bool');
            }
    has db   => (is => 'ro', isa => 'P2I::PleskDB',       required => 1);
    has soap => (is => 'ro', isa => 'P2I::ISPconfigSOAP', required => 1);

    method convert {
	    $self->soap->client_add($self->soap->session, 1, {
                'company_name' => 'awesomecompany',
                'contact_name' => 'name',
                'customer_no' => '1',
                'vat_id' => '1',
                'street' => 'fleetstreet',
                'zip' => '21337',
                'city' => 'london',
                'state' => 'bavaria',
                'country' => 'UK',
                'telephone' => '123456789',
                'mobile' => '987654321',
                'fax' => '546718293',
                'email' => 'e@mail.int',
                'internet' => '',
                'icq' => '111111111',
                'notes' => 'awesome',
                'dafault_mailserver' => 1,
                'limit_maildomain' => -1,
                'limit_mailbox' => -1,
                'limit_mailalias' => -1,
                'limit_mailaliasdomain' => -1,
                'limit_mailforward' => -1,
                'limit_mailcatchall' => -1,
                'limit_mailrouting' => 0,
                'limit_mailfilter' => -1,
                'limit_fetchmail' => -1,
                'limit_mailquota' => -1,
                'limit_spamfilter_wblist' => 0,
                'limit_spamfilter_user' => 0,
                'limit_spamfilter_policy' => 1,
                'default_webserver' => 1,
                'limit_web_ip' => '',
                'limit_web_domain' => -1,
                'limit_web_quota' => -1,
                'web_php_options' => 'no,fast-cgi,cgi,mod,suphp',
                'limit_web_subdomain' => -1,
                'limit_web_aliasdomain' => -1,
                'limit_ftp_user' => -1,
                'limit_shell_user' => 0,
                'ssh_chroot' => 'no,jailkit,ssh-chroot',
                'limit_webdav_user' => 0,
                'default_dnsserver' => 1,
                'limit_dns_zone' => -1,
                'limit_dns_slave_zone' => -1,
                'limit_dns_record' => -1,
                'default_dbserver' => 1,
                'limit_database' => -1,
                'limit_cron' => 0,
                'limit_cron_type' => 'url',
                'limit_cron_frequency' => 5,
                'limit_traffic_quota' => -1,
                'limit_client' => 0,
                'parent_client_id' => 0,
                'username' => 'guy',
                'password' => 'brush',
                'language' => 'en',
                'usertheme' => 'default',
                'template_master' => 0,
                'template_additional' => '',
                'created_at' => 0,
            }
        );
    }
}
