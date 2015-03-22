#!/usr/bin/env perl6

use Net::Curl;

class Net::Curl::Easy {
	has $.url;
	
	method download {
	
		my $curl = curl_easy_init;
		if $curl {
    		curl_easy_setopt($curl, CURLOPT_URL, $.url);
 
    		# Perform the request, res will get the return code
    		my $res = curl_easy_perform($curl);

    		# Check for errors
    		if $res != CURLE_OK {
      			say "Error: curl_easy_perform() failed: " ~ 
					curl_easy_strerror($res);
		 	}

    		# always cleanup 
    		curl_easy_cleanup($curl);
		}

		return "TODO implement .download";
	}
}

my $curl = Net::Curl::Easy.new(url => "http://www.google.com");
my $response = $curl.download;
say $response;

# vim: ft=perl6

