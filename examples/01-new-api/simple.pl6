#!/usr/bin/env perl6
use v6;

# TODO Implement new API

use lib 'lib';
use Net::Curl::API;

given my $curl = Net::Curl::API.new {
    .option(CURLOPT_URL, "http://example.com");
    .perform;

    LEAVE {
      # Always cleanup
      .cleanup if $_;
    }
}
