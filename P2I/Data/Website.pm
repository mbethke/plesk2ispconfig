use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Data::Website {
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ MysqlBool Bigint IPAddress /;

    has [qw/ domain fp_adm fp_pass login home shell client_login  /] =>
        (is => 'ro', isa => Str, required => 1);

    has [qw/ traffic_bandwidth max_connection /] =>
        (is => 'ro', isa => Int, required => 1);

    has [qw/ fp fp_ssl fp_enable ssi php php_safe_mode cgi perl python fastcgi
            miva coldfusion asp asp_dot_net ssl same_ssl /] =>
        (is => 'ro', isa => MysqlBool, coerce => 1, required => 1);

    has [qw/ real_traffic quota /] =>
        (is => 'ro', isa => Bigint, required => 1);

    has webstat             => (is => 'ro', isa => enum([qw/ none webalizer awstats /]), required => 1);
    has php_handler_type    => (is => 'ro', isa => enum([qw/ cgi fastcgi module /]), required => 1);
    has ip_address          => (is => 'ro', isa => IPAddress, required => 1);

    around BUILDARGS($db, Int $id) {
        #my $data = $db->get_website($id);
        #return $self->$orig($data);
        return $self->$orig($db->get_website($id));
    }
}
