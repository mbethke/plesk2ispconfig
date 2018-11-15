use Modern::Perl;
use MooseX::Declare;

class P2I::DB::Postfix extends P2I::PleskDB {

    method read_badmailfrom_from_file {
	my @list = ();
	if (exists($self->config->defaults('mail')->{'badmailfrom'})) {
            my $f = $self->config->defaults('mail')->{'badmailfrom'} or die "No value for badmailfrom file"; # Should read /var/qmail/control/badmainfrom over SSH
            open (FILE, '<', $f) or die "could not open badmailfrom file $f: $!";
            my @list = map { chomp; s/^\s+//g; s/\s+$//g; } <FILE>;
            close FILE or die "Could not close badmailfrom file $f: $!";
	}
        @list;
    }

    method read_badmailfrom_from_db {
        return $self->query_hashes(q[
            SELECT domain
            FROM badmailfrom
            ],
        );
    }

    method get_blacklist {
        my @list = read_badmailfrom_from_db();
	push @list, read_badmailfrom_from_file();
	return @list;
    }

}
