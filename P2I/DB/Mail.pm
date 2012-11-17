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
                c.login, c.pname realname
            FROM mail m
            JOIN accounts a ON m.account_id=a.id
            JOIN domains d ON m.dom_id=d.id
            JOIN clients c on d.cl_id=c.id
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
            JOIN clients c on d.cl_id=c.id
            JOIN mail_aliases a on m.id=a.mn_id
            ] . $sql,
            @$doms
        );
    }
}
