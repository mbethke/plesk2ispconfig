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
use P2I::PleskDB;
use P2I::Domain;

class P2I::DB::Domains extends P2I::PleskDB {
    method get_domains {
        return map {
            P2I::Domain->new(
                domain_name => $_->{name},
                client_name => $_->{cname},
            )
        } $self->db->query(q[ SELECT name,cname FROM domains JOIN clients c ON cl_id=c.id])->hashes;
    }
}
