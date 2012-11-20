use Modern::Perl;
use MooseX::Declare;

role P2I::Password {
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';
    use Digest::MD5 'md5_hex';

    has password     => (is => 'ro', isa => Maybe[Str], required => 1);
    #has password_type=> (is => 'ro', isa => enum([qw/ plain /], required => 1); # TODO what are the other valid types?
    has password_type=> (is => 'ro', isa => Maybe[enum [qw/ plain /]], required => 1); # will die in conversion rather than assignment like this

    # TODO pester the ISPconfig guys to fix this. MD5 hashing is insecure!
    method mangled_password {
        my $pw = $self->password;
        return unless defined $pw;  # only try to convert defined passwords
        for($self->password_type) {
            'plain' eq $_ and return md5_hex($pw);
            die "Unhandled password type `$_'";
        }
    }
}
