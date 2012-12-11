use Modern::Perl;
use MooseX::Declare;

class P2I::Converter with P2I::Debug {
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ IPAddress /;
    use P2I::PleskDB;
    use Scalar::Util qw/ looks_like_number /;
    use Carp;
    use Try::Tiny;
    use IO::Handle;

    has config      => (is => 'ro', isa => 'P2I::Config',  required => 1);
    has db          => (is => 'ro', isa => 'P2I::PleskDB', required => 1);
    has soap        => (
        is      => 'ro',
        isa     => 'P2I::ISPconfigSOAP',
        required=> 1,
        handles => [ qw/ soap_call soapize / ],
    );

    # Make a SOAP call, automatically converting all arguments via soapize()
    method lather(Str $method, @params) {
        my $result;
        try {
            $result = $self->soap_call($method, map { $self->soapize($_) } @params);
        } catch {
            if($self->config->robust) {
                print STDERR "SOAP error: $_\n";
            } else {
                die $_;
            }
        };
        return $result;
    }

    # Get a client ID for a given login
    method get_client_id(Str $login) {
        my $client = $self->lather('client_get_by_username', $login);
        croak("No client for for login `$login'") unless $client;
        return $client->{client_id};
    }

    # Get a server ID by IP address
    # method get_server_id(IPAddress $ip) { TODO why does this break?
    method get_server_id(Str $ip) {
        my $servers = $self->lather('server_get_serverid_by_ip', $ip);
        die "Server with address $ip not found" unless @$servers;
        return $servers->[0]{server_id};
    }

    # Get a server ID for a name defined in the config ("web", "db", "mail", etc.?)
    method get_named_server(Str $name) {
        my $ip = $self->config->server('web') // croak "Server name `$name' not defined in config";
        return $self->get_server_id($ip);
    }

    # Add a bit of text to some file
    method add_to_file(Str $file, Str $chunk) {
        if(open my $fh, '>>', $file) {
            $fh->print($chunk);
            $self->dbg("Added some text to $file");
            $fh->close;
        } else {
            print STDERR "ERROR: can't append to `$file': $!\n";
        }
    }

    # Add a bit of text to a script that should be executed later.
    method add_to_script(Str $chunk) {
        $self->add_to_file($self->config->postscript, $chunk);
    }

    method _map_fields($src, $dst, $map) {
        while(my ($dattr, $sattr) = each %$map) {
            my $val;
            SWITCH: for($sattr) {
                not defined $_ and          $val = undef,      last SWITCH;
                'CODE' eq ref and           $val = $_->($src), last SWITCH;
                'SCALAR' eq ref and         $val = $$_,        last SWITCH;
                looks_like_number($_) and   $val = $_,         last SWITCH;
                !length and                 $val = $_,         last SWITCH;
                $val = $src->$_;
            }
            $dst->{$dattr} = $val;
        }
    }
}

