use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Databases extends P2I::Converter with P2I::Role::Database {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;

    has domains     => (is => 'ro', isa => HashRef, default => sub { {} });

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');
        
        for my $db ($self->db->get_databases) {
        }
    }
}
