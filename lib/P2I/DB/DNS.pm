use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::DNS extends P2I::PleskDB {
    use P2I::Data::DNS::Zone;
    use P2I::Data::DNS::Record;

    method get_dnszones {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::DNS::Zone->new($_) } $self->query_hashes(q[
            SELECT z.*,
            d.name domain, c.login client_login
            FROM dns_zone z
            JOIN domains d ON d.dns_zone_id=z.id
            JOIN clients c ON c.id=d.cl_id
            ] . $sql,
            @$doms
        );
    }

#    method get_ns_for_dnszone(Str $zone) {
#        return $self->query_flat(q[ SELECT r.val ns FROM dns_recs r JOIN dns_zone z ON r.dns_zone_id=z.id ORDER BY ns LIMIT 1 WHERE r.type='ns' AND z.name=? ], $zone);
#    }

    method get_dnsrecords {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::DNS::Record->new($_) } $self->query_hashes(q[
            SELECT r.type, r.host, r.val, r.opt, r.time_stamp,
            d.name domain, c.login client_login
            FROM dns_recs r
            JOIN dns_zone z ON r.dns_zone_id=z.id
            JOIN domains d ON d.dns_zone_id=z.id
            JOIN clients c ON c.id=d.cl_id
            ] . $sql,
            @$doms
        );
    }
}
