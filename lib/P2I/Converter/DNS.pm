use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::DNS extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;
    use POSIX qw/ time gmtime strftime /;

    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_dns_server_id');

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');

        # Calculate new zone serial values for this migration, based on today's date
        my %serial;
        $serial{UNIXTIMESTAMP} = time;
        $serial{YYYYMMDDNN} = strftime("%Y%m%d00", gmtime($serial{UNIXTIMESTAMP}));

        my %zone_ids = ();
        my %clients = ();

        for my $zone ($self->db->get_dnszones) {
            $clients{$zone->client_login} //= $self->get_client_id($zone->client_login);
            if (substr($zone->serial, 0, 8) eq substr($serial{YYYYMMDDNN}, 0, 8)) {
                $zone->serial($zone->serial + 1);
            } else {
                $zone->serial($serial{$zone->serial_format}); # Use serial for date of update
            }
            $zone_ids{$zone->name} = $self->_create_zone($clients{$zone->client_login}, $zone);
        }
        for my $rec ($self->db->get_dnsrecords) {
            $self->_create_dns_record($clients{$rec->client_login}, $zone_ids{$rec->domain}, $rec);
        }

    }

    method _create_zone(Int $client_id, $zone) {
        my %data;
        $self->dbg("\tCreating DNS zone `", $zone->name, "', client `", $zone->client_login, "'");
        $self->_map_fields($zone, \%data, $self->_field_map);
        $self->lather('dns_zone_add', $client_id, \%data);
    }

    method _field_map {
        my $def = $self->config->defaults('dns');
        return {
            server_id               => sub { \$self->server_id },
            mbox                    => 'mbox',
            serial                  => 'serial',
            origin                  => 'name',
            ns                      => \$def->{ns},
            refresh                 => 'refresh',
            retry                   => 'retry',
            expire                  => 'expire',
            minimum                 => 'minimum',
            ttl                     => 'ttl',
            active                  => \'y',
            xfer                    => \$def->{xfer},
            alsonotify              => \'',
            update_acl              => \'',
        };
    }

    method _create_dns_record(Int $client_id, Int $zid, $rec) {
        my $host = $self->map_ipaddr($rec->host);
        my $val = $self->map_ipaddr($rec->val);
        my $opt = $rec->opt;
        if (lc($rec->type) eq 'srv') {
            if ($opt =~ /^(\d+)\s+(\d+)\s+(\d+)$/) {
                $val = "$2 $3 $val";
                $opt = "$1";
            }
        }
        $self->dbg("\tCreating DNS ", $rec->type, " record `$host': `$val'");
        $self->lather('dns_' . lc($rec->type) . '_add', $client_id, {
                server_id   => $self->server_id,
                zone        => $zid,
                name        => $host,
                data        => $val,
                aux         => $opt,
                type        => lc($rec->type),
                timestamp   => $rec->time_stamp,
                ttl         => 3600,
                active      => 'y',
            });
    }

    method map_ipaddr(Str $ip) {
        my $def = $self->config->defaults('web');
        if (exists($def->{ip_map}{$ip})) {
            return $def->{ip_map}{$ip};
        }
        $ip;
    }

    method _build_dns_server_id {
        return $self->get_server_id($self->config->server('dns'));
    }
}
