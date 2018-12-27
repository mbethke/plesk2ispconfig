use Modern::Perl;
use MooseX::Declare;

role P2I::Role::Password {
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';
    use MooseX::ClassAttribute;
    use Digest::MD5 'md5_hex';
    use Crypt::Rijndael;
    use MIME::Base64;

    has password     => (is => 'ro', isa => Maybe[Str], required => 1,
        initializer => sub {
            my ( $self, $pw, $writer_sub_ref, $attribute_meta ) = @_;

            my @parts = split/\$/, $pw;
            if (scalar(@parts) > 3 && $parts[1] eq 'AES-128-CBC') { # Only decrypt AES passwords for now
                # Passwords are of form $AES-128-CBC$longivstring$cryptedpassword, so part zero is blank, part 1 is AES...
                $self->cipher->set_iv(decode_base64($parts[2]));
                $pw = $self->cipher->decrypt(decode_base64($parts[3]));
            }
            $pw =~ s/[^[:print:]]+//g;
            print STDERR "Setting password to '$pw' " . length($pw) . " characters\n";
            $self->{password} = $pw;
        }
    );
    #has password_type=> (is => 'ro', isa => enum([qw/ plain /], required => 1); # TODO what are the other valid types?
    has password_type=> (is => 'ro', isa => Maybe[enum [qw/ plain crypt sym /]], required => 1); # will die in conversion rather than assignment like this
    class_has cipher => (is => 'rw', isa => 'Crypt::Rijndael');

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
