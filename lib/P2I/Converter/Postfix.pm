use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Postfix extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');

        for my $ent ($self->db->get_blacklist) {
            $self->_create_blacklist($ent);
        }
    }

    method _create_blacklist(Str $ent) {
        $self->dbg("\t\tAdding Postfix blacklist entry `$ent'");
        $self->lather('mail_blacklist_add', {
                server_id   => $self->server_id,
                source      => $ent,
                active      => 'y',
                access      => 'REJECT',
                type        => 'sender',
            });
    }

}
