use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Clients extends P2I::PleskDB {
    use P2I::Data::Client;

    method list_parents {
        return $self->query_flat(q[ SELECT id FROM clients WHERE parent_id IS NULL ORDER BY id ]);
    }

    method list_dependents {
        return $self->query_flat(q[ SELECT id FROM clients WHERE parent_id IS NOT NULL ORDER BY id ]);
    }

    method read_client(Int $id) {
        return P2I::Data::Client->new(
            $self->query_hash(q[
                SELECT c.*, a.password password, a.type password_type
                FROM clients c LEFT JOIN accounts a ON c.account_id=a.id
                WHERE c.id=? ],
                $id
            )
        );
    }
}
