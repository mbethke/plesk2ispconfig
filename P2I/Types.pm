package P2I::Types;
use Modern::Perl;
use MooseX::Types -declare => [ qw/ MysqlDateTime MysqlBool Bigint IPAddress / ];
use MooseX::Types::Moose qw/ Bool Str /;
use MooseX::Types::DateTime::ButMaintained qw/ DateTime /;
use DateTime::Format::MySQL;
use Regexp::Common qw/ net /;
use Regexp::IPv6 qw/ $IPv6_re /;

subtype MysqlDateTime, as DateTime;
coerce MysqlDateTime,
    from Str,
    via { DateTime::Format::MySQL->parse_date(shift) };

subtype MysqlBool, as Bool;
coerce MysqlBool,
    from Str,
    via {
        given(lc shift) {
            return 1 when 'true';
            return 0 when 'false';
            die 'MysqlBool bust be "true" or "false"';
        }
    };

subtype Bigint,
    as Str,
    where { /^[-+]?\d+$/ },
    message { "Not a valid big integer" };

subtype IPAddress,
    as Str,
    where { /^$RE{net}{IPv4}$/ or /^$IPv6_re$/ },
    message { "Not a valid IPv4 or IPv6 address" };
