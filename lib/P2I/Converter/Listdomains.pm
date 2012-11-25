use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Listdomains extends P2I::Converter {
    method convert {
        print "$_\n" for $self->db->list;
    }
}
