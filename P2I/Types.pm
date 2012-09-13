package P2I::Types;
use v5.10;
use Moose::Util::TypeConstraints;
use DateTime::Format::MySQL;

subtype 'P2I::MysqlDateTime', as 'DateTime';
coerce 'P2I::MysqlDateTime',
    from 'Str',
    via { DateTime::Format::MySQL->parse_date(shift) };

subtype 'P2I::MysqlBool', as 'Bool';
coerce 'P2I::MysqlBool',
    from 'Str',
    via {
        given(lc shift) {
            return 1 when 'true';
            return 0 when 'false';
            die 'MysqlBool bust be "true" or "false"';
        }
    };
