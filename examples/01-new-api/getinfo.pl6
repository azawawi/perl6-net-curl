#!/usr/bin/env perl6
use v6;

# Not yet implemented

use lib 'lib';
use Net::Curl::Easy;

my $curl = Net::Curl::Easy.new;
$curl.set-option(CURLOPT_URL, 'http://www.google.jo/');
$curl.perform;

# Ask for the content-type
my $content-type = $curl.get-info(CURLINFO_CONTENT_TYPE);
printf("We received Content-Type: %s\n", $content-type);

LEAVE {
  # Always cleanup on lexical scope exit
  $curl.cleanup if $curl;
}
