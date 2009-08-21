use inc::Module::Install;
name 'LWP-UserAgent-EnvProxy';
all_from 'lib/LWP/UserAgent/EnvProxy.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
