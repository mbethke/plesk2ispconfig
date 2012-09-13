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

class P2I::Domain {
    has domain_name => (is => 'ro', isa => 'Str');
    has client_name => (is => 'ro', isa => 'Str');
}

