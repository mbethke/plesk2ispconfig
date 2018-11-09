use Modern::Perl;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class P2I::Converter::Databases extends P2I::Converter with P2I::Role::DatabaseCreator {
    use MooseX::Types::Moose ':all';
    use P2I::ISPconfigSOAP;
    use Try::Tiny;

    method convert {
        $self->dbg(__PACKAGE__ . '::convert');
        
        for my $db ($self->db->get_databases) {
            try {
                my $client_id = $self->get_client_id($db->client_login);
                my $db_name = $db->name;
                my $db_user = $db->login;
                my ($db_new_name, $db_new_user) = ($db_name, $db_user);
                my $rewrite = $self->config->databases->{rewrite_names};
                if($self->config->databases->{rewrite_names}) {
                    # Change user and db names to ISPconfig scheme
                    $db_new_name = 'c_'  . $client_id . $db_name;
                    $db_new_user = 'cu_' . $client_id . $db_user;
                }
                
                # In any case, do some fixing up so ISPconfig will not complain
                # about illegal characters
                s/-/_/g for($db_new_name, $db_new_user);

                my $dbu_id = $self->add_database_user($client_id, {
                        new_user        => $db_new_user,
                        password        => $db->password,
                    }
                );
                $self->add_database($client_id, {
                        database        => $db_name,
                        user            => $db_user,
                        password        => $db->password,
                        new_database    => $db_new_name,
                        new_user        => $db_new_user,
                        new_user_id     => $dbu_id,
                    }
                );
            } catch {
                print STDERR "$_\n";
            };
        }
    }
}
