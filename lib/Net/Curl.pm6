
use v6;

module Net::Curl;

use NativeCall;

constant LIB = 'libcurl.so';

constant CURLOPT_URL is export = 10002;
constant CURLE_OK    is export = 0;


sub curl_easy_init() 
	returns OpaquePointer
	is native(LIB)
	is export { ... };

sub curl_easy_cleanup(OpaquePointer)
	is native(LIB)
	is export { ... };

sub curl_easy_setopt(OpaquePointer, int, Str)
	is native(LIB)
	is export { ... };

sub curl_easy_perform(OpaquePointer)
	returns int
	is native(LIB) 
	is export { ... };

# Returns the string describing error code
sub curl_easy_strerror(int)
	returns Str
	is native(LIB) 
	is export { ... };

# Returns the libcurl version string
sub curl_easy_version()
	returns Str
	is native(LIB)
	is export { ... };

