#!/usr/bin/env perl6

use Net::Curl;

class Net::Curl::Easy {
	has $.url;
	
	method download {
	
		my $curl = curl_easy_init;
		my $body = Buf.new; # or use Str

		if $curl {
			curl_easy_setopt($curl, CURLOPT_URL, $.url);
			curl_easy_setopt($curl, CURLOPT_WRITEDATA, $body);
			curl_easy_setopt($curl, CURLOPT_FOLLOWLOCATION, 0);
	 
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

		return $body.decode('latin1');
	}
}

my $curl = Net::Curl::Easy.new(url => "http://www.google.com");
my $response = $curl.download;
say $response;

# vim: ft=perl6

