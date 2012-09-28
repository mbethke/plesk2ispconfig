package P2I::Types;
use Modern::Perl;
use MooseX::Types -declare => [ qw/ MysqlDateTime MysqlBool / ];
use MooseX::Types::Moose qw/ Bool Str /;
use MooseX::Types::DateTime::ButMaintained qw/ DateTime /;
use DateTime::Format::MySQL;

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
