#===============================================================================
#
#         FILE: Domains.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/11/2012 09:59:12 PM
#     REVISION: ---
#===============================================================================
use MooseX::Declare;

class P2I::DB::Domains extends P2I::PleskDB {
    use P2I::Data::Domain;
    
    method get_domains {
        return map {
            P2I::Data::Domain->new(
                domain_name => $_->{name},
                client_name => $_->{cname},
            )
        } $self->db->query(q[ SELECT name,cname FROM domains JOIN clients c ON cl_id=c.id])->hashes;
    }
}
