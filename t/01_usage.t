use strict;
use warnings;
use Test::More;

use LWP::UserAgent;
use LWP::UserAgent::EnvProxy;

{
    ok my $ua = LWP::UserAgent->new;
    isa_ok $ua, 'LWP::UserAgent';
    is $ua->proxy('http'), undef;
}
{
    local $ENV{HTTP_PROXY} = 'http://localhost:8080/';
    ok my $ua = LWP::UserAgent->new;
    isa_ok $ua, 'LWP::UserAgent';
    is $ua->proxy('http'), 'http://localhost:8080/';
}

done_testing;
