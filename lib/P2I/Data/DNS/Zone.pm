use Modern::Perl;
use MooseX::Declare;

class P2I::Data::DNS::Zone {
    use MooseX::Types::Moose ':all';

    has [qw/ name type client_login email serial_format /] => (is => 'ro', isa => Str, required => 1);
    has [qw/ ttl expire refresh retry minimum /] => (is => 'ro', isa => Int, required => 1);
    has [qw/ serial /] => (is => 'rw', isa => Maybe[Str], required => 1);
    has [qw/ server_id /   ] => (is => 'ro', isa => Int);
#    has [qw/ ns / ] => (is => 'ro', isa => Str, required => 1, lazy => 1, builder => '_build_ns');

#    method _build_ns {
#        $self->db->get_ns_for_dnszone($self->name);
#    }
   method mbox {
       my $box = $self->email;
       $box =~ s/\@/./; # BIND format
       "$box.";
   }
}

