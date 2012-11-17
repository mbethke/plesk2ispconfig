use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Clients extends P2I::PleskDB {
    use P2I::Data::Client;

    method list_parents {
        $self->_list_clients('parent_id IS NULL');
    }

    method list_dependents {
        $self->_list_clients('parent_id IS NOT NULL');
    }

    method _list_clients(Str $where) {
        my ($doms, $sql) = $self->domain_sql(
            "JOIN domains d ON c.id=d.cl_id WHERE $where AND d.name"
        );
        $sql = "WHERE $where" unless $sql;

        return $self->query_flat(qq[
            SELECT c.id
            FROM clients c
            $sql
            ORDER BY c.id ], @$doms
        );
    }

    method read_client(Int $id) {
        return P2I::Data::Client->new(
            $self->query_hash(qq[
                SELECT DISTINCT c.*, a.password, a.type password_type
                FROM clients c
                LEFT JOIN accounts a ON c.account_id=a.id
                WHERE c.id=?],
                $id
            )
        );
    }

    method read_permissions(Int $id) {
        return $self->query_hashes(q[
            SELECT permission, value
            FROM Permissions
            WHERE id=? ],
            $id
        );
    }
}
