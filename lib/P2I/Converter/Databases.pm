use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Databases extends P2I::Converter with P2I::Role::DatabaseCreator {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;
    use Try::Tiny;

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');
        
        for my $db ($self->db->get_databases) {
            try {
                $self->add_database(
                    $self->get_client_id($db->client_login),
                    {
                        database    => $db->name,
                        user        => $db->login,
                        password    => $db->password,
                    }
                );
            } catch {
                print STDERR "$_\n";
            };
        }
    }
}
