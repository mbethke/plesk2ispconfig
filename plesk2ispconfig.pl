#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: plesk2ispconfig.pl
#
#        USAGE: ./plesk2ispconfig.pl [--config=file.yml]
#
#  DESCRIPTION: Migrate stuff from Plesk to ISPconfig3
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/28/2012 11:06:28 PM
#     REVISION: ---
#===============================================================================
use local::lib;
use Modern::Perl;
use P2I::App;

P2I::App->new_with_options->run;
