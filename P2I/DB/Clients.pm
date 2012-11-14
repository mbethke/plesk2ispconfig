use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Clients extends P2I::PleskDB {
    use P2I::Data::Client;

    method list_parents {
        return $self->query_flat(q[
            SELECT id
            FROM clients
            WHERE parent_id IS NULL
            ORDER BY id ]);
    }

    method list_dependents {
        return $self->query_flat(q[
            SELECT id
            FROM clients
            WHERE parent_id IS NOT NULL
            ORDER BY id ]);
    }

    method read_client(Int $id) {
        my $doms = $self->config->do_domains;
        my $where_clause = 'WHERE c.id=?';
        if($doms) {
            $where_clause = q[JOIN domains d ON c.id=d.cl_id
            WHERE c.id=? AND d.name IN ] .
            '(' . join(',', ('?') x @$doms) . ')';
        }
        return P2I::Data::Client->new(
            $self->query_hash(qq[
                SELECT DISTINCT c.*, a.password, a.type password_type
                FROM clients c
                LEFT JOIN accounts a ON c.account_id=a.id
                $where_clause],
                $id, @{$self->config->do_domains // []}
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
