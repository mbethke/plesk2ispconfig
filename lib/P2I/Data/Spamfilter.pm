use Modern::Perl;
use MooseX::Declare;

class P2I::Data::Spamfilter {
    use MooseX::Types::Moose ':all';

    has [qw/ mail_name domain client_login username id /] => (is => 'ro', isa => Str);
}

