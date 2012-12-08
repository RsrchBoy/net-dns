use strict;
use warnings;

# ABSTRACT: A simple check to make sure we don't lose new_from_hash() again

use Test::More;
use Net::DNS::RR;

can_ok 'Net::DNS::RR', 'new_from_hash';

done_testing;
