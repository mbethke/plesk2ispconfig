use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Websites extends P2I::PleskDB {
    use P2I::Data::Website;

    method list_website_ids {
        return $self->query_flat(q[ SELECT dom_id FROM hosting ]);
    }

    method get_website(Int $id) {
        return $self->query_hash(q[
            SELECT h.real_traffic, h.fp, h.fp_ssl, h.fp_enable, h.fp_adm,
                h.fp_pass,h.ssi,h.php, h.php_safe_mode, h.cgi, h.perl,
                h.python, h.fastcgi, h.miva, h.coldfusion, h.asp, h.asp_dot_net,
                h.ssl, h.webstat, h.same_ssl, h.traffic_bandwidth,
                h.max_connection, h.php_handler_type,
                d.name domain,
                s.login, s.home, s.shell, s.quota,
                a.type password_type, a.password,
                i.ip_address,
                c.login client_login
            FROM hosting h
            JOIN domains d ON d.id=h.dom_id
            JOIN sys_users s ON s.id=h.sys_user_id
            JOIN accounts a ON a.id=s.account_id
            JOIN IP_Addresses i ON i.id=h.ip_address_id
            JOIN clients c ON c.id=d.cl_id
            WHERE h.dom_id=? ],
            $id
        );
    }
}
