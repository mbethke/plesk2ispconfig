use MooseX::Declare;

class P2I::App with MooseX::Getopt {
    use MooseX::Types::Moose ':all';
    use DBIx::Simple;
    use P2I::ISPconfigSOAP;
    use P2I::Converter;
    use P2I::Config;

    has config      => (is => 'rw', isa => Str, default => 'config.yml');
    has _modules    => (
        is      => 'ro',
        isa     => Str,
        default => 'Clients,Domains,Mail,Websites',
        reader  => 'modules',
    );
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
        $self->db->query("SET CHARSET 'utf8'");

        for my $mod (split /,/, $self->modules) {
            # TODO use some  plugin module here
            eval  <<"EOUSE";
                use P2I::Converter::$mod;
                use P2I::DB::$mod;
EOUSE
            $@ and die;

            "P2I::Converter::$mod"->new(
                db      => "P2I::DB::$mod"->new(db => $self->db),
                soap    => $self->soap,
                config  => $self->cfg,
            )->convert;
        }
    }

    method _build_cfgdata {
        printf STDERR "Instantiating config from %s\n",$self->config;
        P2I::Config->new(name => $self->config);
    }

    method _build_db {
        my $cfg = $self->cfg->plesk;
        return DBIx::Simple->new(
            "DBI:mysql:database=$cfg->{db};host=$cfg->{host};port=$cfg->{port}",
            $cfg->{user}, $cfg->{pass},
            { RaiseError => 1 },
        );
    }

    method _build_soap {
        my $cfg = $self->cfg->ispconfig;
        return P2I::ISPconfigSOAP->new( map { $_ => $cfg->{$_} } qw/ user pass proxy uri /);
    }
}
