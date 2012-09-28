use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Domains extends P2I::Converter {
    use P2I::ISPconfigSOAP;

    method convert {
        use Data::Dumper;
        for my $domain ($self->db->get_domains) {
            my $client = $self->lather('client_get_by_username', $domain->login);
            say "SOAP: domains_domain_add($client->{client_id}, @{[$domain->domain_name]})";
            $self->lather('domains_domain_add',
                $client->{client_id}, { domain => $domain->domain_name }
            );
        }
    }
}
