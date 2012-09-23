#===============================================================================
#
#         FILE: PleskDB.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/28/2012 11:11:03 PM
#     REVISION: ---
#===============================================================================
use Modern::Perl;
use MooseX::Declare;

class P2I::PleskDB {
    has db => (is => 'ro', isa => 'DBIx::Simple', required  => 1);

    method list {
        my $query = $self->query_list
            or die "You have to define a `query_list' attribute in your subclass";
        return $self->db->query($query)->flat;
    }

    method query { $self->db->query(@_) }
}
