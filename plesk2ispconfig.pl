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
use utf8;
use local::lib;
use Modern::Perl;
use DBIx::Simple;
use P2I::ISPconfigSOAP;
use P2I::Converter;

my $db = DBIx::Simple->new(
    'DBI:mysql:database=psa;host=127.0.0.1;port=3306',
    'pleskuser', 'foo',
     { RaiseError => 1 },
);
$db->query("SET CHARSET 'utf8'");

my $soap = P2I::ISPconfigSOAP->new(
    #user =>  'admin',
    #pass => '3UX7aEssnXtA',
    user    => 'apiuser',
    pass    => '123456',
    proxy   => 'http://192.168.56.101:8079/remote/index.php',
    uri     => 'http://192.168.56.101:8079/remote/',
);

P2I::Converter->new(db => $db, soap => $soap)->run(qw/ Clients Domains Mail /);
#P2I::Converter->new(db => $db, soap => $soap)->run(qw/ Domains /);
