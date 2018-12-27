use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Mail extends P2I::PleskDB {
    use P2I::Data::Mail::Box;
    use P2I::Data::Mail::Alias;

    method get_mailboxes {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Mail::Box->new($_) } $self->query_hashes(q[
            SELECT m.mail_name, m.perm_id, m.postbox, m.redirect, m.redir_addr,
                m.mail_group, m.autoresponder, m.spamfilter, m.virusfilter,
                m.mbox_quota quota,
                a.password, a.type password_type,
                d.name domain,
                c.login, c.pname realname,
                r.text response
            FROM mail m
            JOIN accounts a ON m.account_id=a.id
            JOIN domains d ON m.dom_id=d.id
            JOIN clients c ON d.cl_id=c.id
            LEFT OUTER JOIN mail_resp r ON r.mn_id=m.id
            ] . $sql,
            @$doms
        );
    }

    method get_aliases {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Mail::Alias->new($_) } $self->query_hashes(q[
            SELECT m.mail_name, d.name domain, c.login, a.alias
            FROM mail m
            JOIN domains d ON m.dom_id=d.id
            JOIN clients c ON d.cl_id=c.id
            JOIN mail_aliases a on m.id=a.mn_id
            ] . $sql,
            @$doms
        );
    }

    method get_catchalls {
        my ($doms, $sql) = $self->domain_sql('AND d.name');
        return map { P2I::Data::Mail::Catchall->new($_) } $self->query_hashes(q[
            SELECT p.value mail_name, d.name domain, c.login
            FROM Parameters p
            JOIN domains d ON d.id=p.id
            JOIN clients c on d.cl_id=c.id
            WHERE p.parameter='catch_addr'
            ], $domain
        );
    }

    method get_aliasdomains(Str $domain) {
        return $self->query_flat(q[
            SELECT a.name
            FROM domainaliases a
            JOIN domains d ON d.id=a.dom_id
            WHERE a.mail='true' AND d.name=?
            ], $domain
        );
    }

    method get_maillists {
        # Incorrectly returns client email and password as list owner email and password
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Mail::List->new($_) } $self->query_hashes(q[
            SELECT l.name, d.name domain, c.login, c.email,
                a.password, a.type password_type
            FROM MailLists l
            JOIN domains d ON l.dom_id=d.id
            JOIN clients c ON d.cl_id=c.id
            JOIN accounts a ON c.account_id=a.id
            ] . $sql,
            @$doms
        );
    }

    method get_redirs (Str $mail_name, Str $domain) {
        return $self->query_flat(q[ SELECT r.address FROM mail_redir r JOIN mail m ON r.mn_id=m.id JOIN domains d ON m.dom_id=d.id WHERE m.mail_name=? AND d.name=? ], $mail_name, $domain);
    }
}
