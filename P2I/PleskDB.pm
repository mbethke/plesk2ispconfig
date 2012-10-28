use Modern::Perl;
use MooseX::Declare;

class P2I::PleskDB {
    use Encode qw/ decode /;
    use Try::Tiny;

    has db      => (is => 'ro', isa => 'DBIx::Simple', required => 1);
    has config  => (is => 'ro', isa => 'P2I::Config',  required => 1);

    # Run a DBIx::Simple query and return its result object. You'll have to do
    # the charset decoding yourself!
    method query {
        try {
            $self->db->query(@_)
        } catch {
            if($self->config->robust) {
                print STDERR "SQL error: $_\n";
            } else {
                die $_;
            }
        };
    }

    # Query a flat result list and decode to UTF8
    method query_flat(@args) {
        my $a = $self->db->query(@args)->flat;
        return map { decode('utf8', $_) } @$a;
    }

    # Query a hash of results and decode values to UTF8
    method query_hash(@args) {
        my $h = $self->db->query(@args)->hash;
        $_ = decode('utf8', $_) for(values %$h);
        return $h;
    }

    # Query a list of result hashes and decode values to UTF8
    method query_hashes(@args) {
        return map {
            $_ = decode('utf8', $_) for(values %$_);
            $_;
        } $self->db->query(@args)->hashes;
    }
}
