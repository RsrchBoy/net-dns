# $Id: 00-pod.t 1068 2012-12-06 10:38:51Z willem $

use strict;
use warnings;

# test iff we're a in release testing
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use Test::More;

# test iff we have a recent level of Test::Pod
use Test::Requires {
    'Test::Pod' => '1.00',
};

all_pod_files_ok();

done_testing;
