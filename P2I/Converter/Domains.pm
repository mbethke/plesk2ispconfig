use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Domains extends P2I::Converter {
    use P2I::ISPconfigSOAP;

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');

        for my $domain ($self->db->get_domains) {
            $self->dbg("\tCreating domain `", $domain->domain_name, "', client `", $domain->login, "'");
            $self->lather('domains_domain_add',
                $self->get_client_id($domain->login),
                { domain => $domain->domain_name }
            );
        }
    }
}
