#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: plesk2ispconfig.pl
#
#        USAGE: ./plesk2ispconfig.pl  
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

use strict;
use warnings;
use utf8;
use local::lib;
use Modern::Perl;
use P2I::Types;
use P2I::Converter::Clients;
use P2I::Converter::Domains;
use P2I::DB::Clients;
use P2I::DB::Domains;

P2I::PleskDB->dsn('DBI:mysql:database=psa;host=127.0.0.1;port=3306');
P2I::PleskDB->user('pleskuser');
P2I::PleskDB->pass('foo');
P2I::PleskDB->opts( {RaiseError => 1} );

P2I::ISPconfigSOAP->user('admin');
P2I::ISPconfigSOAP->pass('3UX7aEssnXtA');
P2I::ISPconfigSOAP->proxy('https://mail2-de.zonarix.com:8080/remote/index.php');
P2I::ISPconfigSOAP->uri('https://mail2-de.zonarix.com:8080/remote/');

my $soap = P2I::ISPconfigSOAP->new;
#P2I::Converter::Clients->new(db => P2I::DB::Clients->new, soap => $soap)->convert;
P2I::Converter::Domains->new(db => P2I::DB::Domains->new, soap => $soap)->convert;
