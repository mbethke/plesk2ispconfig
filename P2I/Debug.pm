use MooseX::Declare;

role P2I::Debug {
    requires 'config';
    method dbg(@args) { $self->config->debug and print STDERR @args, "\n"; }
}
