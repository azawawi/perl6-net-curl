
use v6;

module Net::Curl;

use NativeCall;

constant LIB = 'libcurl.so';

constant CURLOPT_URL = 10002;
constant CURLE_OK    = 0;


sub curl_easy_init() 
	returns OpaquePointer
	is native(LIB) { ... };

sub curl_easy_cleanup(OpaquePointer)
	is native(LIB) { ... };

sub curl_easy_setopt(OpaquePointer, int, Str)
	is native(LIB) { ... };

sub curl_easy_perform(OpaquePointer)
	returns int is native(LIB) { ... };

sub curl_easy_strerror(int)
	returns Str is native(LIB) { ... };


