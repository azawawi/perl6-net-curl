#!/usr/bin/env perl6
use v6;

BEGIN { @*INC.push('lib') };

use Net::Curl;
use NativeCall;

my $curl = curl_easy_init;
die "Failed to curl_easy_init" unless $curl;

curl_easy_setopt($curl, CURLOPT_URL, 'http://www.google.jo/');
    
my $res = curl_easy_perform($curl);

if CURLE_OK == $res {

	# ask for the content-type
	my $ct = CArray[int].new;
	$ct[$_] = 1 for 0..2;
	$res = curl_easy_getinfo($curl, CURLINFO_CONTENT_TYPE, $ct);

    if (CURLE_OK == $res) && $ct {
        printf("We received Content-Type: %s\n", $ct[0]);
		say "\$ct[$_] = {$ct[$_]}" for 0..2;
    }

    # always cleanup
    curl_easy_cleanup($curl);
}
