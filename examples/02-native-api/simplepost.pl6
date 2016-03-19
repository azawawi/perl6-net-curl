#!/usr/bin/env perl6

use v6;

use lib 'lib';
use Net::Curl::NativeCall;

my $curl = curl_easy_init;

if $curl {

  my Str $postthis = "moo mooo moo moo";

  curl_easy_setopt($curl, CURLOPT_URL, "http://example.com");
  curl_easy_setopt($curl, CURLOPT_POSTFIELDS, $postthis);

  # if we don't provide POSTFIELDSIZE, libcurl will strlen() by itself 
  curl_easy_setopt($curl, CURLOPT_POSTFIELDSIZE, $postthis.chars);

  # Perform the request, res will get the return code
  my $res = curl_easy_perform($curl);

  # Check for errors
  if $res != CURLE_OK {
    warn sprintf("curl_easy_perform failed: %s\n",
            curl_easy_strerror($res));
  }

  # always cleanup
  curl_easy_cleanup($curl);
}
