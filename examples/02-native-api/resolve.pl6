#!/usr/bin/env perl6

use v6;

use lib 'lib';
use NativeCall;
use Net::Curl::NativeCall;

my $res = CURLE_OK;

#
# Each single name resolve string should be written using the format
# HOST:PORT:ADDRESS where HOST is the name libcurl will try to resolve,
#   PORT is the port number of the service where libcurl wants to connect to
#   the HOST and ADDRESS is the numerical IP address
#
my Pointer $host = curl_slist_append(Pointer.new(0), "example.com:80:127.0.0.1");

my $curl = curl_easy_init;
if $curl {
  curl_easy_setopt($curl, CURLOPT_RESOLVE, $host);
  curl_easy_setopt($curl, CURLOPT_URL, "http://example.com");
  $res = curl_easy_perform($curl);

  # always cleanup
  curl_easy_cleanup($curl);
}

curl_slist_free_all($host);

exit $res;
