#!/usr/bin/env perl6
use v6;

use Net::Curl;

my $curl = curl_easy_init;
if $curl {
    curl_easy_setopt($curl, CURLOPT_URL, 'http://example.com');
 
    # Perform the request, res will get the return code
    my $res = curl_easy_perform($curl);

    # Check for errors
    if $res {
      say "Error: curl_easy_perform() failed: {curl_easy_strerror($res)}";
 	}

    # always cleanup 
    curl_easy_cleanup($curl);
}

# vim: ft=perl6

