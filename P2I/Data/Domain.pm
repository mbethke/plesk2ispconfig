#===============================================================================
#
#         FILE: Domain.pm
#
#  DESCRIPTION:
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 09/11/2012 09:54:33 PM
#     REVISION: ---
#===============================================================================
use MooseX::Declare;

class P2I::Data::Domain {
    has [qw/ domain_name login /] => (is => 'ro', isa => 'Str');
}

