use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Listdomains extends P2I::PleskDB {
    method list {
        return $self->query_flat(q[ SELECT name from domains ]);
    }
}

