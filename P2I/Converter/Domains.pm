#===============================================================================
#
#         FILE: Domains.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/11/2012 09:50:11 PM
#     REVISION: ---
#===============================================================================
use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Domains extends P2I::Converter {
    use P2I::ISPconfigSOAP;

    method convert {
        use Data::Dumper;
        for my $domain ($self->db->get_domains) {
            my $client = $self->soap_call('client_get_by_username', $domain->client_name);
            say "SOAP: domains_domain_add($client->{id}, $domain->domain_name";
            #$self->soap_call('domains_domain_add', $client->{id}, $domain->domain_name);
        }
    }
}
