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
    use Encode qw/ decode /;

    has db => (is => 'ro', isa => 'DBIx::Simple', required  => 1);

    method list {
        my $query = $self->query_list
            or die "You have to define a `query_list' attribute in your subclass";
        return $self->db->query($query)->flat;
    }

    # Run a DBIx::Simple query and return its result object. You'll have to do
    # the charset decoding yourself!
    method query { $self->db->query(@_) }

    # Query a flat result list and decode to UTF8
    method query_flat(@args) {
        my $a = $self->db->query(@args)->flat;
        return map { decode('utf8', $_) } @$a;
    }

    # Query a hash of results and decode values to UTF8
    method query_hash(@args) {
        my $h = $self->db->query(@args)->hash;
        $_ = decode('utf8', $_) for(values %$h);
        return $h;
    }
}
