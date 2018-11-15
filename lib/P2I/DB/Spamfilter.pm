use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::DB::Spamfilter extends P2I::PleskDB {
    use P2I::Data::Spamfilter;

    method get_spamfilter_users {
        my ($doms, $sql) = $self->domain_sql('WHERE d.name');
        return map { P2I::Data::Spamfilter->new($_) } $self->query_hashes(q[
            SELECT m.mail_name, d.name domain, s.username, s.id, c.login client_login
            FROM mail m
            JOIN domains d ON d.id=m.dom_id
            JOIN clients c ON c.id=d.cl_id
            JOIN spamfilter s ON s.username=CONCAT(m.mail_name,'@',d.name)
            ] . $sql,
            @$doms
        );
    }

    method _get_spamfilter_settings_for_id(Int $spu_id, $setting) {
        return $self->query_flat(q[ SELECT value FROM spamfilter_preferences WHERE spamfilter_id=? AND preference=? ],
            $spu_id, $setting);
    }

    method _get_spamfilter_setting_for_id(Int $spu_id, $setting) {
        my @results = $self->_get_spamfilter_settings_for_id($spu_id, $setting);
        die "Multiple results returned" if scalar(@results) > 1;
        return $results[0];
    }

    method get_spamfilter_blacklists_for_id(Int $spu_id) {
#        return $self->query_flat(q[ SELECT value FROM spamfilter_preferences WHERE spamfilter_id=? AND preference IN ('blacklist_from') ],
#            $spu_id);
        return $self->_get_spamfilter_settings_for_id($spu_id, 'blacklist_from');
    }

    method get_spamfilter_whitelists_for_id(Int $spu_id) {
#        return $self->query_flat(q[ SELECT value FROM spamfilter_preferences WHERE spamfilter_id=? AND preference IN ('whitelist_from') ],
#            $spu_id);
        return $self->_get_spamfilter_settings_for_id($spu_id, 'whitelist_from');
    }

    method get_spamfilter_actions_for_id(Int $spu_id) {
        return $self->_get_spamfilter_setting_for_id($spu_id, 'action');
    }

    method get_spamfilter_rewrites_for_id(Int $spu_id) {
        return $self->_get_spamfilter_setting_for_id($spu_id, 'rewrite_header');
    }

    method get_spamfilter_scores_for_id(Int $spu_id) {
        return $self->_get_spamfilter_setting_for_id($spu_id, 'required_score');
    }
}
