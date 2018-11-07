use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Websites extends P2I::PleskDB {
    use P2I::Data::Website;

    method list_website_ids {
        my ($doms, $sql) = $self->domain_sql(
            "JOIN domains d ON d.id=h.dom_id WHERE parentDomainId=0 AND d.name"
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
                if(h.php='true', if (h.php_handler_type='fastcgi', 'fast-cgi', h.php_handler_type), 'none') as php_type,
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
            JOIN IP_Addresses i ON i.id=IF(h.ip_address_id = 0, (select val from misc where param='def_ip_id'), h.ip_address_id)
            JOIN clients c ON c.id=d.cl_id
            LEFT OUTER JOIN certificates t ON t.id=h.certificate_id
            WHERE h.dom_id=? ],
            $id
        );
    }

    method get_subdomains_for_id(Int $dom_id) {
        return $self->query_flat(q[ SELECT id FROM domains WHERE parentDomainId=? ],
            $dom_id);
    }

    method get_subdomain(Int $id) {
        return $self->query_hash(q[
            SELECT h.real_traffic, h.fp, h.fp_ssl, h.fp_enable, h.fp_adm,
                h.fp_pass, h.ssi, h.php, h.cgi, h.perl,
                h.python, h.fastcgi, h.miva, h.coldfusion, h.asp, h.asp_dot_net,
                h.ssl, h.webstat, h.same_ssl, h.traffic_bandwidth,
                h.max_connection, h.php_handler_type, h.www_root,
                if(h.php='true', if (h.php_handler_type='fastcgi', 'fast-cgi', h.php_handler_type), 'none') as php_type,
                d.name domain, d.htype,
                s.login, s.home, s.shell, s.quota,
                a.type password_type, a.password,
                i.ip_address,
                t.csr ssl_csr, t.pvt_key ssl_key, t.cert ssl_cert, t.ca_cert ssl_cacert,
                TRIM(TRAILING '.' FROM SUBSTRING_INDEX(d.name, p.name, 1)) subdomain,
                c.login client_login,
                p.name parent_domain
            FROM hosting h
            JOIN domains d ON d.id=h.dom_id
            JOIN sys_users s ON s.id=h.sys_user_id
            JOIN accounts a ON a.id=s.account_id
            JOIN IP_Addresses i ON i.id=IF(h.ip_address_id = 0, (select val from misc where param='def_ip_id'), h.ip_address_id)
            JOIN clients c ON c.id=d.cl_id
            JOIN domains p ON p.id=d.parentDomainId
            LEFT OUTER JOIN certificates t ON t.id=h.certificate_id
            WHERE h.dom_id=? ],
            $id);
    }

    method get_php_standard_settings_for_id(Int $dom_id) {
        return $self->query_hashes(q[
            SELECT p.name, p.value
            FROM PhpSettingsParameters p
            JOIN dom_param o ON o.val=p.id
            JOIN domains d ON d.id=o.dom_id
            WHERE o.param='phpSettingsId'
            AND d.id=? ],
            $dom_id);
    }

    method get_php_custom_settings_for_id(Int $dom_id) {
        return $self->query_hashes(q[
            SELECT n.text
            FROM PhpSettings p
            JOIN Notes n on p.noteId=n.id
            JOIN dom_param o ON o.val=p.id
            JOIN domains d ON d.id=o.dom_id
            WHERE d.id=? ],
            $dom_id);
    }

    method get_protected_dirs_for_id(Int $dom_id) {
        return $self->query_hashes(q[
            SELECT p.path, p.realm, d.name domain
            FROM protected_dirs p
            JOIN domains d ON p.dom_id=d.id
            WHERE d.id=? ],
            $dom_id);
    }

    method get_protected_dir_users_for_id(Int $dom_id, Str $path) {
        return $self->query_hashes(q[
            SELECT u.login, p.realm, d.name domain
            FROM pd_users u
            JOIN protected_dirs p ON p.id=u.pd_id
            JOIN domains d ON p.dom_id=d.id
            WHERE d.id=? AND p.path=?],
            $dom_id, $path);
    }

    method get_aliasdomains(Str $domain) {
        return $self->query_flat(q[ SELECT a.name FROM domainaliases a JOIN domains d ON d.id=a.dom_id WHERE a.web='true' AND d.name=? ], $domain);
    }

}
