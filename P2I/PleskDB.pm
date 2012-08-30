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

use Moose; 
use MooseX::Declare;

class P2I::PleskDB {
    use MooseX::ClassAttribute;
    use DBIx::Simple;

    class_has [qw/ dsn user pass /] => (is => 'rw', isa => 'Str');
    class_has opts => (is => 'rw', isa => 'HashRef');
    class_has db => (is => 'rw', isa => 'DBIx::Simple', lazy => 1, builder => '_init_dbhandle');

    method list {
        my $query = $self->query_list
            or die "You have to define a `query_list' attribute in your subclass";
        return $self->db->query($query)->flat;
    }

    sub _init_dbhandle {
        return DBIx::Simple->new(
            __PACKAGE__->dsn,
            __PACKAGE__->user,
            __PACKAGE__->pass,
            __PACKAGE__->opts
        );
    }
}
