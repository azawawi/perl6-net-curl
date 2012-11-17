
use v6;

module Net::Curl;

use NativeCall;

constant LIB = 'libcurl.so';


constant CURLINFO_STRING                  = 0x100000;
constant CURLOPT_URL is export            = 10002;
constant CURLE_OK    is export            = 0;
constant CURLINFO_CONTENT_TYPE is export  = CURLINFO_STRING + 18;
constant CURL_GLOBAL_DEFAULT is export    = 0x3;
constant CURLOPT_SSL_VERIFYPEER is export = 0x40;
constant CURLOPT_SSL_VERIFYHOST is export = 0x51;

# Start a libcurl easy session 
sub curl_easy_init() 
	returns OpaquePointer
	is native(LIB)
	is export { ... };

# End a libcurl easy session
sub curl_easy_cleanup(OpaquePointer)
	is native(LIB)
	is export { ... };

# Set options for a curl easy handle
sub curl_easy_setopt(OpaquePointer, int, Str)
	is native(LIB)
	is export { ... };

# Perform a file transfer
sub curl_easy_perform(OpaquePointer)
	returns int
	is native(LIB) 
	is export { ... };

# Return the string describing error code
sub curl_easy_strerror(int)
	returns Str
	is native(LIB) 
	is export { ... };

# Return the libcurl version string
sub curl_easy_version()
	returns Str
	is native(LIB)
	is export { ... };

# Extract information from a curl handle
sub curl_easy_getinfo(OpaquePointer, int, CArray[Str])
	returns int
	is native(LIB)
	is export { ... };

sub curl_global_init(int)
	returns int
	is native(LIB)
	is export { ... };

sub curl_global_cleanup
	is native(LIB)
	is export { ... };
