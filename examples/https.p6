#!/usr/bin/env perl6
use v6;

use Net::Curl;

constant SKIP_PEER_VERIFICATION 	 = 0;
constant SKIP_HOSTNAME_VERIFICATION  = 0;

curl_global_init(CURL_GLOBAL_DEFAULT);

my $curl = curl_easy_init;

if $curl {
    curl_easy_setopt($curl, CURLOPT_URL, "https://www.google.jo/");

	if SKIP_PEER_VERIFICATION {
# If you want to connect to a site who isn't using a certificate that is
# signed by one of the certs in the CA bundle you have, you can skip the
# verification of the server's certificate. This makes the connection
# A LOT LESS SECURE.
#
# If you have a CA cert for the server stored someplace else than in the
# default bundle, then the CURLOPT_CAPATH option might come handy for
# you.
	  	curl_easy_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
	}

	if SKIP_HOSTNAME_VERIFICATION {
# If the site you're connecting to uses a different host name that what
# they have mentioned in their server certificate's commonName (or
# subjectAltName) fields, libcurl will refuse to connect. You can skip
# this check, but this will make the connection less secure.
	    curl_easy_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
	}

    # Perform the request, res will get the return code
    my $res = curl_easy_perform($curl);
    
	# Check for errors
    if $res != CURLE_OK {
      say "curl_easy_perform() failed: " ~ curl_easy_strerror($res);
	}
    
	# always cleanup
	curl_easy_cleanup($curl);
}

curl_global_cleanup;

