use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Domains extends P2I::PleskDB {
    use P2I::Data::Domain;
    
    method get_domains {
        return map {
            P2I::Data::Domain->new(
                domain_name => $_->{name},
                login       => $_->{login},
            )
        } $self->db->query(q[ SELECT name,login FROM domains JOIN clients c ON cl_id=c.id])->hashes;
    }
}
