#!/usr/bin/env perl6

use Test;
use Net::Curl;
use Net::Curl::Easy;

plan 1;

unless %*ENV<NETWORK_TESTING> {
  diag "NETWORK_TESTING was not set";
  skip-rest("NETWORK_TESTING was not set");
  exit;
}

my $curl = Net::Curl::Easy.new(:url('http://www.w3.org/2006/11/mwbp-tests/test-encoding-9.html'));
my $response = $curl.download;
ok $response ~~ / 'é' /, "got response" or die :$response.perl;
