#!/usr/bin/env perl6
use v6;

use Net::Curl;

my $curl = curl_easy_init;
die "Failed to curl_easy_init" unless $curl;

curl_easy_setopt($curl, CURLOPT_URL, 'http://www.google.jo/');
    
my $res = curl_easy_perform($curl);

if CURLE_OK == $res {

	# ask for the content-type
	my $ct = CArray[Str].new;
	$ct[0] = '';
	$res = curl_easy_getinfo($curl, CURLINFO_CONTENT_TYPE, $ct);

    if (CURLE_OK == $res) && $ct {
        printf("We received Content-Type: %s\n", $ct[0]);
    }

    # always cleanup
    curl_easy_cleanup($curl);
}

# vim: ft=perl6

