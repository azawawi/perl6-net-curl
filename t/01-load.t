use v6;

BEGIN { @*INC.push('lib') };

use Test;

plan 1;

use Net::Curl;

ok 1, "'use Net::Curl' worked!";
