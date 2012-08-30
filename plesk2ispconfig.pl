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
use SOAP::Lite;
use DBIx::Simple;
use P2I::PleskDB;
use P2I::Converter::Client;

P2I::PleskDB->dsn('DBI:mysql:database=psa;host=127.0.0.1;port=13306');
P2I::PleskDB->user('admin');
P2I::PleskDB->pass('PLk^Wq7T8?C}By%6stMNezo3i');
P2I::PleskDB->opts( {RaiseError => 1} );

P2I::SOAP->user('admin');
P2I::SOAP->pass('3UX7aEssnXtA');
P2I::SOAP->location('http://mail2-de.zonarix.com:8080/remote/index.php');
P2I::SOAP->uri('http://mail2-de.zonarix.com:8080/remote/');

P2I::Converter::Client->new(P2I::DBClients->new, P2I::SOAP::Clients->new)->convert;
