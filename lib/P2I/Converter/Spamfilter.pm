use Modern::Perl;
use MooseX::Declare;

class P2I::Converter::Spamfilter extends P2I::Converter {
    use MooseX::Types::Moose ':all';
    use Data::Dumper;

    has server_id   => (is => 'ro', isa => Int,
        lazy => 1, builder => '_build_mail_server_id');

    method convert {
        my $db = $self->db;

        $self->dbg(__PACKAGE__ . '::convert');

        my %pols = ();

#        if ($self->config->defaults('mail')->{'domain_spamfilter'}) {
#            for my $id ($db->get_spamfilter_users) {
#                $pols{ $db->get_spamfilter_action($id) }{ $db->get_spamfilter_rewrite_header($id) }{ $db->get_spamfilter_required_score($id) } = $id;
#            }
#            my @policies = sort { $a->action cmp $b->action || $a->required_header cmp $b->rewrite_header || $a->required_score <=> $b->required_score } keys %pols;
#            # Client's default policy is most common one in this list
#            # Create unique policy unless user set to client's policy
#            for my $k (keys %pols) {
#                # $self->_create_spamfilter_policy($client_id, "$action/$score/$rewrite", $action, $score, $rewrite);
#            }
#        }
        for my $id ($db->get_spamfilter_users) {
            my $client_id = $self->get_client_id($id->client_login);
            # if user's policy differs from domain policy, create a unique policy for that user
	    # Now: if a default policy number is set, use that, else create a unique policy for that user.
            my $pol = $self->config->defaults('mail')->{policy};
            if ($pol < 0) {
                $pol = $self->_create_spamfilter_policy(
                    $client_id,
                    $id->username,
                    $db->get_spamfilter_actions_for_id($id->id) || 'move',
                    $db->get_spamfilter_scores_for_id($id->id) || 6.0,
                    $db->get_spamfilter_rewrites_for_id($id->id) || '',
                );
            }
            my $added = $self->_create_spamfilter_user($client_id, $id, $pol);

            # Copy all black and whitelist entries
            for my $bl ($db->get_spamfilter_blacklists_for_id($id->id)) {
                $self->_create_spamfilter_bw_entry($client_id, $added, $bl, 'B', 'mail_spamfilter_blacklist_add');
            }

            for my $bl ($db->get_spamfilter_whitelists_for_id($id->id)) {
                $self->_create_spamfilter_bw_entry($client_id, $added, $bl, 'W', 'mail_spamfilter_whitelist_add');
            }

            # amavisd doesn't use the spam score, header rewrite, and other settings
        }
    }

    method _create_spamfilter_user(Int $client_id, $user, $policy) {
        $self->dbg("\tCreating spamfilter user `", $user->username, "', client $client_id");
        # Generate the rsync snipped before calling the API so that we return the API call result
        my $sync = $self->config->plesk->{sync};
        $self->add_to_script(sprintf "rsync -za -e'ssh -p%d' %s\@%s:/var/qmail/mailnames/%s/%s/.spamassassin /var/vmail/%s/%s\n",
            $sync->{port}, $sync->{user}, $sync->{host}, $user->domain, $user->mail_name, $user->domain, $user->mail_name,
        );
        $self->lather('mail_spamfilter_user_add', $client_id, {
            server_id   => $self->server_id,
            email       => $user->username,
            fullname    => $user->username,
            priority    => \10,
            local       => \'Y',
            policy_id   => $policy, #$self->config->defaults('mail')->{policy},
        });
    }

    method _create_spamfilter_policy(Int $client_id, $name, $action, $score, $rewrite) {
        $self->dbg("\tCreating spamfilter policy '$name ($action/$score/$rewrite)' for client $client_id");
        my $user = { };
        my $data = { };
        $self->_map_fields($user, $data, $self->_policy_field_map);
        $data->{policy_name} = $name;
        $data->{spam_tag2_level} = $score;
	if ($action eq 'delete') {
            $data->{spam_kill_level} = $score;
	}
        $data->{spam_subject_tag2} = $rewrite =~ m/subject (.+)\s*$/ ? $1 : '';
        $self->lather('mail_policy_add', $client_id, $data);
    }

    method _create_spamfilter_bw_entry(Int $client_id, Int $rid, Str $bl, Str $flag, Str $op) {
        $self->dbg("\tAdding spamfilter black/whitelist entry $flag `$bl', client $client_id");
        $self->lather($op, $client_id, {
                server_id   => $self->server_id,
                rid         => $rid,
                email       => $bl,
                wb          => $flag,
                active      => 'y',
            });
    }

    method _policy_field_map {
        my $def = $self->config->defaults('mail');
        return {
            server_id           => \$self->server_id,

            policy_name                  => \'',
            # Checks to run
            virus_lover                  => \'N',
            spam_lover                   => \'N',
            banned_files_lover           => \'N',
            bad_header_lover             => \'N',
            bypass_virus_checks          => \'N',
            bypass_spam_checks           => \'N',
            bypass_banned_checks         => \'N',
            bypass_header_checks         => \'N',
            # Forward via email
            virus_quarantine_to          => \'',
            spam_quarantine_to           => \'',
            banned_quarantine_to         => \'',
            bad_header_quarantine_to     => \'',
            clean_quarantine_to          => \'',
            other_quarantine_to          => \'',
            # Score thresholds and subject modification
            spam_modifies_subj           => \'',
            spam_tag_level               => 0,
            spam_tag2_level              => 5.5,
            spam_kill_level              => 25.0,
            spam_dsn_cutoff_level        => 25.0,
            spam_quarantine_cutoff_level => 0,
            spam_subject_tag             => \'',
            spam_subject_tag2            => \'***SPAM***',
            message_size_limit           => 0,
            banned_rulenames             => \'',
            # Route to mailbox by adding extension to email address
            addr_extension_virus         => \'',
            addr_extension_spam          => \'',
            addr_extension_banned        => \'',
            addr_extension_bad_header    => \'',
            # Notify via email
            warnvirusrecip               => \'N',
            warnbannedrecip              => \'N',
            warnbadhrecip                => \'N',
            newvirus_admin               => \'',
            virus_admin                  => \'',
            banned_admin                 => \'',
            bad_header_admin             => \'',
            spam_admin                   => \'',
        };
    }

    method _build_mail_server_id {
        return $self->get_server_id($self->config->server('mail'));
    }

}
