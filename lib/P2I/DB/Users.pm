use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Users extends P2I::PleskDB {
    use P2I::Data::Users::FTP;
    use P2I::Data::Users::Web;

    method get_ftpusers {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Users::FTP->new($_) } $self->query_hashes(q[
            SELECT s.login user,
                a.password, a.type password_type,
                s.home, d.name domain, c.login client_login
            FROM ftp_users f
            JOIN domains d ON f.dom_id=d.id
            JOIN sys_users s ON s.id=f.sys_user_id
            JOIN accounts a ON a.id=s.account_id
            JOIN clients c on d.cl_id=c.id
            ] . $sql,
            @$doms
        );
    }

    method get_sysusers {
        my ($doms, $sql) = $self->domain_sql('WHERE d.parentDomainId=0 AND d.name');
        return map { P2I::Data::Users::FTP->new($_) } $self->query_hashes(q[
            SELECT s.login user,
                a.password, a.type password_type,
                s.home, d.name domain, c.login client_login
            FROM sys_users s
            JOIN hosting h ON s.id=h.sys_user_id
            JOIN domains d ON d.id=h.dom_id
            JOIN accounts a ON a.id=s.account_id
            JOIN clients c on d.cl_id=c.id
            ] . $sql,
            @$doms
        );
    }

    method get_webusers {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Users::Web->new($_) } $self->query_hashes(q[
            SELECT s.login user,
                a.password, a.type password_type,
                s.home, d.name domain, c.login client_login
            FROM web_users w
            JOIN domains d ON d.id=w.dom_id
            JOIN sys_users s ON s.id=w.sys_user_id
            JOIN clients c on d.cl_id=c.id
            JOIN accounts a ON s.account_id=a.id
            ] . $sql,
            @$doms
        );
    }
}
