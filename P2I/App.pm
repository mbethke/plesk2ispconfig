use MooseX::Declare;

class P2I::App with MooseX::Getopt {
    use MooseX::Types::Moose ':all';
    use DBIx::Simple;
    use P2I::ISPconfigSOAP;
    use P2I::Converter;
    use P2I::Config;

    has config      => (is => 'rw', isa => Str, default => 'config.yml');
    has modules     => (is => 'rw', isa => Str, default => 'Clients,Domains,Mail,Websites');
    has domains     => (is => 'rw', isa => Str);
    has listmodules => (is => 'rw', isa => Bool, default => 0);
    has robust      => (is => 'rw', isa => Bool, default => 0);
    has _cfgdata => (
        is      => 'ro',
        isa     => 'P2I::Config',
        lazy    => 1,
        builder => '_build_cfgdata',
        reader  => 'cfg',
    );
    has _db => (
        is      => 'ro',
        isa     => 'DBIx::Simple',
        lazy    => 1,
        builder => '_build_db',
        reader  => 'db'
    );
    has _soap => (
        is      => 'ro',
        isa     => 'P2I::ISPconfigSOAP',
        lazy    => 1,
        builder => '_build_soap',
        reader  => 'soap'
    );

    method run {
        # Just list the default plus the Listdomains module and exit
        if($self->listmodules) {
            my $mods = $self->modules;
            $mods =~ s/,/\n/g;
            print "Listdomains\n$mods\n";
            exit 0;
        }

        # Add information on domains and robustness to process to config
        if(my $domains = $self->domains) {
            $self->cfg->do_domains([ split /,/, $domains ]);
        }
        $self->cfg->robust($self->robust);

        # Remove the script to execute later
        unlink $self->cfg->postscript;

        for my $mod (split /,/, $self->modules) {
            # TODO use some  plugin module here
            eval  <<"EOUSE";
                use P2I::Converter::$mod;
                use P2I::DB::$mod;
EOUSE
            $@ and die;

            "P2I::Converter::$mod"->new(
                db      => "P2I::DB::$mod"->new(
                    db => $self->db,
                    config => $self->cfg
                ),
                soap    => $self->soap,
                config  => $self->cfg,
            )->convert;
        }
    }

    method _build_cfgdata {
        P2I::Config->new(name => $self->config);
    }

    method _build_db {
        my $cfg = $self->cfg->plesk;
        my $db = DBIx::Simple->new(
            "DBI:mysql:database=$cfg->{db};host=$cfg->{host};port=$cfg->{port}",
            $cfg->{user}, $cfg->{pass},
            { RaiseError => 1 },
        );
        $db->query(q[ SET CHARSET 'utf8' ]);
        return $db;
    }

    method _build_soap {
        my $cfg = $self->cfg->ispconfig;
        return P2I::ISPconfigSOAP->new( map { $_ => $cfg->{$_} } qw/ user pass proxy uri /);
    }
}
