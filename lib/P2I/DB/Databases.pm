use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Databases extends P2I::PleskDB {
    use P2I::Data::Database;

    method get_databases {
        my ($doms, $sql) = $self->domain_sql('WHERE o.name');
        return map { P2I::Data::Database->new($_) } $self->query_hashes(q[
            SELECT d.name, d.type, d.db_server_id server,
            u.login, a.type password_type, a.password
            FROM data_bases d
            JOIN db_users u ON d.default_user_id=u.id
            JOIN accounts a ON u.account_id=a.id
            JOIN domains o on o.id=d.dom_id
            ] . $sql,
            @$doms
        );
    }
}
