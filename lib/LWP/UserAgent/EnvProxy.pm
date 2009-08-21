package LWP::UserAgent::EnvProxy;

use strict;
use warnings;
use LWP::UserAgent;
our $VERSION = '0.01';

my $orig = \&LWP::UserAgent::new;

sub new_with_env_proxy {
    my ($class, %conf) = @_;
    $conf{env_proxy} = 1;
    return $orig->($class, %conf);
};

{
    no strict 'refs';
    no warnings 'redefine';
    *LWP::UserAgent::new = \&new_with_env_proxy;
}

1;
__END__

=head1 NAME

LWP::UserAgent::EnvProxy -

=head1 SYNOPSIS

  use LWP::UserAgent::EnvProxy;

=head1 DESCRIPTION

LWP::UserAgent::EnvProxy is

=head1 AUTHOR

Nobuo Danjou E<lt>nobuo.danjou@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
