use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Domains extends P2I::PleskDB {
    use P2I::Data::Domain;
    
    method get_domains {
        my $where = '';
        if(my $doms = $self->config->do_domains) {
            $where = 'WHERE name IN ( ' . join(',', ('?') x @$doms) . ')';
        }
        return map {
            P2I::Data::Domain->new(
                domain_name => $_->{name},
                login       => $_->{login},
            )
        } $self->query_hashes(
            qq[ SELECT name,login FROM domains JOIN clients c ON cl_id=c.id $where],
            @{$self->config->do_domains // []}
        );
    }
}
