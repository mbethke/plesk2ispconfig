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
#      CREATED: 08/29/2012 10:41:34 AM
#     REVISION: ---
#===============================================================================

use Moose;
use MooseX::Declare;

class client {
    use DateTime::Format::MySQL;
    use MooseX::Types::DateTime::ButMaintained qw/ DateTime /;

    has id           => (is => 'ro', isa => 'Int');
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

    sub set_cr_date { DateTime::Format::MySQL->parse_datetime(shift) }
}

