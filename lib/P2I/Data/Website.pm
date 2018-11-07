use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Data::Website {
    use Moose::Util::TypeConstraints;
    use MooseX::Types::Moose ':all';
    use P2I::Types qw/ MysqlBool Bigint IPAddress /;

    has [qw/ domain fp_adm fp_pass login home shell client_login www_root /] =>
        (is => 'ro', isa => Str, required => 1);

    has [qw/ traffic_bandwidth max_connection /] =>
        (is => 'ro', isa => Int, required => 1);

    has [qw/ fp fp_ssl fp_enable ssi php cgi perl python fastcgi
            miva coldfusion asp asp_dot_net ssl same_ssl /] =>
        (is => 'ro', isa => MysqlBool, coerce => 1, required => 1);

    has [qw/ real_traffic quota /] =>
        (is => 'ro', isa => Bigint, required => 1);

    has sub_domain       => (is => 'ro', isa => 'Str');
    has parent_domain    => (is => 'ro', isa => 'Maybe[Str]',                         required => 1);
    has htype            => (is => 'ro', isa => enum([qw/ vrt_hst std_fwd none /]),   required => 1);
    has webstat          => (is => 'ro', isa => enum([qw/ none webalizer awstats /]), required => 1);
    has php_handler_type => (is => 'ro', isa => enum([qw/ cgi fastcgi module /]),     required => 1);
    has ip_address       => (is => 'ro', isa => IPAddress,                            required => 1);
    has [qw/ ssl_csr ssl_key ssl_cert ssl_cacert /] => (is => 'ro', isa => 'Maybe[Str]', required => 1);

    # Read a website from the database
    method _read($db, Int $id) { $db->get_website($id); }

    around BUILDARGS($db, Int $id) {
        return $self->$orig($self->_read($db, $id));
    }
}

