use MooseX::Declare;

role P2I::Role::Debug {
    requires 'config';
    method dbg(@args) { $self->config->debug and print STDERR @args, "\n"; }
}
