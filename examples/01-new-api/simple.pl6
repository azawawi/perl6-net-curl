#!/usr/bin/env perl6
use v6;

# Not yet implemented

use lib 'lib';
use Net::Curl::API;

my $curl = Net::Curl::API.new;
$curl.option(CURLOPT_URL, "http://example.com");
$curl.perform;

CATCH {
  when X:Net::Curl::Failure {
    die $_;
  }
}

LEAVE {
  # Always cleanup
  $curl.cleanup if $curl;
}
