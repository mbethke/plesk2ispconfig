use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Data::WebSubdomain extends P2I::Data::Website {
    has subdomain => (is => 'ro', isa => 'Str', required => 1);

    # Read a subdomain from the database
    override _read($db, Int $id) { $db->get_subdomain($id); }
}


