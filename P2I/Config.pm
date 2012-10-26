use Modern::Perl;
use 5.10.1;
use MooseX::Declare;

class P2I::Config {
    use MooseX::Types::Moose ':all';
    use Moose::Util::TypeConstraints;
    use Carp;
    use YAML;

    has name        => (is => 'ro', isa => Str, required => 1);
    has _data       => (is => 'ro', isa => HashRef, lazy => 1, builder => '_load_config');
    has do_domains  => (is => 'rw', isa => ArrayRef);

    method server(Str $type) {
        croak("type arg must be `mail' or `web'")
            unless $type ~~ [qw/ mail web /];
        return $self->_data->{server}{$type};
    }

    method defaults(Str $type) {
        croak("type arg must be `mail' or `web'")
            unless $type ~~ [qw/ mail web /];
        return $self->_data->{defaults}{$type};
    }

    method plesk        { return $self->_data->{plesk}; }
    method ispconfig    { return $self->_data->{ispconfig}; }

    method _load_config {
        my $check = {
            server => { mail => 1, web => 1 },
            defaults => {
                mail => {
                    uid     => 1,
                    gid     => 1,
                    homedir => 1,
                    maildir => 1,
                },
                web => {
                    ruby                => 1,
                    suexec              => 1,
                    traffic_quota_lock  => 1,
                    allow_override      => 1,
                    ip_map              => {}
                },
            },
            plesk => {
                db   => 1,
                host => 1,
                port => 1,
                user => 1,
                pass => 1,
            },
            ispconfig => {
                uri     => 1,
                proxy   => 1,
                user    => 1,
                pass    => 1,
            },
        };
        my $d = YAML::LoadFile($self->name)
            or die "Can't load config file `@{[$self->name]}'";
        validate($d, $check);
        return $d;
    }

    sub validate {
        my ($a, $b, $path) = @_;
        foreach(keys %$b) {
            my $newpath = defined $path ? "$path.$_" : $_;
            die "Key $newpath is required" unless defined $a->{$_};
            if('HASH' eq ref $b->{$_}) {
                die "Value for $newpath must be a hash" unless 'HASH' eq ref $a->{$_};
                validate($a->{$_}, $b->{$_}, $newpath);
            }
        }
    }
}
