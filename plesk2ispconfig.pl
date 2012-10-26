#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: plesk2ispconfig.pl
#
#        USAGE: ./plesk2ispconfig.pl [--config=file.yml]
#
#  DESCRIPTION: Migrate stuff from Plesk to ISPconfig3
#
#      OPTIONS: [--config=FILE] [--listmodules] [--modules=MODULE[,MODULE ...]]
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: Zonarix S.A.
#      VERSION: 0.1
#      CREATED: 08/28/2012 11:06:28 PM
#===============================================================================
use local::lib;
use Modern::Perl;
use P2I::App;

P2I::App->new_with_options->run;
