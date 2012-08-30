#===============================================================================
#
#         FILE: Converter.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/29/2012 07:06:08 PM
#     REVISION: ---
#===============================================================================

use Moose; 
use MooseX::Declare;
use P2I::PleskDB;
use P2I::ISPconfigSOAP;

class P2I::Converter {
    has db          => (is => 'ro', isa => 'P2I::PleskDB',       required => 1);
    has soap        => (is => 'ro', isa => 'P2I::ISPconfigSOAP', required => 1);
    has query       => (is => 'ro', isa => 'Str',                required => 1);
    has field_map   => (is => 'ro', isa => 'HashRef',            required => 1);
    has soap_call   => (is => 'ro', isa => 'Str',                required => 1);

    method convert {
        foreach my $record ($self->db->read_all) {
            $self->soap->{$self->soap_call}($self->soap->session, 1, $self->_map_fields($recorda);)
        );
    }
    method _map_fields {

    }
}

