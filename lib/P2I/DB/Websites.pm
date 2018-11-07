use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Websites extends P2I::PleskDB {
    use P2I::Data::Website;

    method list_website_ids {
        my ($doms, $sql) = $self->domain_sql(
            "JOIN domains d ON d.id=h.dom_id WHERE d.name"
        );
        return $self->query_flat(qq[ SELECT DISTINCT dom_id FROM hosting h $sql], @$doms);
    }

    method get_website(Int $id) {
        return $self->query_hash(q[
            SELECT h.real_traffic, h.fp, h.fp_ssl, h.fp_enable, h.fp_adm,
                h.fp_pass, h.ssi, h.php, h.cgi, h.perl,
                h.python, h.fastcgi, h.miva, h.coldfusion, h.asp, h.asp_dot_net,
                h.ssl, h.webstat, h.same_ssl, h.traffic_bandwidth,
                h.max_connection, h.php_handler_type, h.www_root,
                d.name domain, d.htype,
                s.login, s.home, s.shell, s.quota,
                a.type password_type, a.password,
                i.ip_address,
                t.csr ssl_csr, t.pvt_key ssl_key, t.cert ssl_cert, t.ca_cert ssl_cacert,
                c.login client_login,
                NULL parent_domain
            FROM hosting h
            JOIN domains d ON d.id=h.dom_id
            JOIN sys_users s ON s.id=h.sys_user_id
            JOIN accounts a ON a.id=s.account_id
            JOIN IP_Addresses i ON i.id=h.ip_address_id
            JOIN clients c ON c.id=d.cl_id
            LEFT OUTER JOIN certificates t ON t.id=h.certificate_id
            WHERE h.dom_id=? ],
            $id
        );
    }

    method get_subdomains_for_id(Int $dom_id) {
        return $self->query_flat(q[ SELECT id FROM subdomains WHERE dom_id=? ],
            $dom_id);
    }

    method get_subdomain(Int $id) {
        return $self->query_hash(q[
           SELECT u.ssi, u.php, u.cgi, u.perl, u.python,
                u.fastcgi, u.miva, u.coldfusion, u.asp, u.asp_dot_net,
                u.ssl, u.same_ssl, u.name subdomain,
                h.real_traffic, h.fp, h.fp_ssl, h.fp_enable, h.fp_adm,
                h.webstat, h.traffic_bandwidth, h.fp_pass,
                h.max_connection, h.php_handler_type, h.www_root,
                u.name sub_domain, CONCAT(u.name, '.', d.name) domain,
                d.name parent_domain, d.htype,
                s.login, s.home, s.shell, s.quota,
                a.type password_type, a.password,
                i.ip_address,
                t.csr ssl_csr, t.pvt_key ssl_key, t.cert ssl_cert, t.ca_cert ssl_cacert,
                c.login client_login
            FROM subdomains u
            JOIN domains d ON d.id=u.dom_id
            JOIN hosting h ON h.dom_id=u.dom_id
            JOIN sys_users s ON s.id=h.sys_user_id
            JOIN accounts a ON a.id=s.account_id
            JOIN IP_Addresses i ON i.id=h.ip_address_id
            JOIN clients c ON c.id=d.cl_id
            LEFT OUTER JOIN certificates t ON t.id=h.certificate_id
            WHERE u.id=? ],
            $id);
    }

    method get_aliasdomains(Str $domain) {
        return $self->query_flat(q[ SELECT a.name FROM domainaliases a JOIN domains d ON d.id=a.dom_id WHERE a.web='true' AND d.name=? ], $domain);
    }

}
