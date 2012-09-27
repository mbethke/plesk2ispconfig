#===============================================================================
#
#         FILE: ISPconfigSOAP.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Matthias Bethke (mbethke), matthias@towiski.de
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 08/29/2012 01:43:32 PM
#     REVISION: ---
#===============================================================================
use Modern::Perl;
use MooseX::Declare;

class P2I::ISPconfigSOAP {
    use SOAP::Lite ;#trace =>  [qw/ parameters debug /];
    use Data::Dumper;

    has [qw/ user pass uri proxy /] => (is => 'rw', isa => 'Str', required => 1);
    has soap      => (is => 'ro', isa => 'SOAP::Lite', lazy => 1, builder => '_init_soap');
    has session   => (is => 'ro',                      lazy => 1, builder => '_init_session');

    method soap_call($method, @args) {
        return $self->_soap_or_die($method,  $self->session,  @args);
    }

    method soapize($d) {
        'HASH'  eq ref($d) and return SOAP::Data->type(map => $d);
        'ARRAY' eq ref($d) and die "Check correct conversion";
        return $d;  # Everything else should be correctly handled
    }

    method _init_soap {
        return SOAP::Lite
        ->ns($self->uri)
        ->readable(1)
        ->proxy($self->proxy,
            ssl_opts => { verify_hostname => 0 },
        );
    }
   
    method _init_session() {
        return $self->_soap_or_die('login', $self->user, $self->pass);
    }

    method _soap_or_die($method, @args) {
        say "calling SOAP->$method(",(join ",",@args),")";
        my $som = $self->soap->call($method, @args);
        die "SOAP error for method `$method': " . $som->faultstring if ($som->fault);
        return $som->result;
    }
}

