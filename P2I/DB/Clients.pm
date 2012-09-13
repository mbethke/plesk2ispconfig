#===============================================================================
#
#         FILE: Clients.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/29/2012 09:16:40 AM
#     REVISION: ---
#===============================================================================
use MooseX::Declare;

class P2I::DB::Clients extends P2I::PleskDB {
    use P2I::Data::Client;

    method list_parents {
        return $self->db->query(q[ SELECT id FROM clients WHERE parent_id IS NULL ORDER BY id ])->flat;
    }

    method list_dependents {
        return $self->db->query(q[ SELECT id FROM clients WHERE parent_id IS NOT NULL ORDER BY id ])->flat;
    }

    method read_client(Int $id) {
        return P2I::Data::Client->new(
            $self->db->query(q[ SELECT * FROM clients WHERE id=? ], $id)->hash
        );
    }
}
