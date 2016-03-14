
use v6;

unit module Net::Curl;

use NativeCall;

constant LIB = "curl"; 

constant CURLINFO_STRING                        = 0x100000;
constant CURLOPT_URL is export                  = 10002;
constant CURLE_OK    is export                  = 0;
constant CURLINFO_CONTENT_TYPE is export        = CURLINFO_STRING + 18;
constant CURL_GLOBAL_DEFAULT is export          = 0x3;
constant CURLOPT_FILE is export                 = 10001;
constant CURLOPT_WRITEDATA is export            = 10001;
constant CURLOPT_PORT is export                 = 3;
constant CURLOPT_PROXY is export                = 10004;
constant CURLOPT_USERPWD is export              = 10005;
constant CURLOPT_PROXYUSERPWD is export         = 10006;
constant CURLOPT_RANGE is export                = 10007;
constant CURLOPT_INFILE is export               = 10009;
constant CURLOPT_ERRORBUFFER is export          = 10010;
constant CURLOPT_WRITEFUNCTION is export        = 20011;
constant CURLOPT_READFUNCTION is export         = 20012;
constant CURLOPT_TIMEOUT is export              = 13;
constant CURLOPT_INFILESIZE is export           = 14;
constant CURLOPT_POSTFIELDS is export           = 10015;
constant CURLOPT_REFERER is export              = 10016;
constant CURLOPT_FTPPORT is export              = 10017;
constant CURLOPT_USERAGENT is export            = 10018;
constant CURLOPT_LOW_SPEED_LIMIT is export      = 19;
constant CURLOPT_LOW_SPEED_TIME is export       = 20;
constant CURLOPT_RESUME_FROM is export          = 21;
constant CURLOPT_COOKIE is export               = 10022;
constant CURLOPT_HTTPHEADER is export           = 10023;
constant CURLOPT_HTTPPOST is export             = 10024;
constant CURLOPT_SSLCERT is export              = 10025;
constant CURLOPT_KEYPASSWD is export            = 10026;
constant CURLOPT_CRLF is export                 = 27;
constant CURLOPT_QUOTE is export                = 10028;
constant CURLOPT_WRITEHEADER is export          = 10029;
constant CURLOPT_COOKIEFILE is export           = 10031;
constant CURLOPT_SSLVERSION is export           = 32;
constant CURLOPT_TIMECONDITION is export        = 33;
constant CURLOPT_TIMEVALUE is export            = 34;
constant CURLOPT_CUSTOMREQUEST is export        = 10036;
constant CURLOPT_STDERR is export               = 10037;
constant CURLOPT_POSTQUOTE is export            = 10039;
constant CURLOPT_WRITEINFO is export            = 10040;
constant CURLOPT_VERBOSE is export              = 41;
constant CURLOPT_HEADER is export               = 42;
constant CURLOPT_NOPROGRESS is export           = 43;
constant CURLOPT_NOBODY is export               = 44;
constant CURLOPT_FAILONERROR is export          = 45;
constant CURLOPT_UPLOAD is export               = 46;
constant CURLOPT_POST is export                 = 47;
constant CURLOPT_DIRLISTONLY is export          = 48;
constant CURLOPT_APPEND is export               = 50;
constant CURLOPT_NETRC is export                = 51;
constant CURLOPT_FOLLOWLOCATION is export       = 52;
constant CURLOPT_TRANSFERTEXT is export         = 53;
constant CURLOPT_PUT is export                  = 54;
constant CURLOPT_PROGRESSFUNCTION is export     = 20056;
constant CURLOPT_PROGRESSDATA is export         = 10057;
constant CURLOPT_AUTOREFERER is export          = 58;
constant CURLOPT_PROXYPORT is export            = 59;
constant CURLOPT_POSTFIELDSIZE is export        = 60;
constant CURLOPT_HTTPPROXYTUNNEL is export      = 61;
constant CURLOPT_INTERFACE is export            = 10062;
constant CURLOPT_KRBLEVEL is export             = 10063;
constant CURLOPT_SSL_VERIFYPEER is export       = 64;
constant CURLOPT_SSL_VERIFYHOST is export       = 81;
constant CURLOPT_CAINFO is export               = 10065;
constant CURLOPT_MAXREDIRS is export            = 68;
constant CURLOPT_FILETIME is export             = 69;
constant CURLOPT_TELNETOPTIONS is export        = 10070;
constant CURLOPT_MAXCONNECTS is export          = 71;
constant CURLOPT_CLOSEPOLICY is export          = 72;
constant CURLOPT_FRESH_CONNECT is export        = 74;
constant CURLOPT_FORBID_REUSE is export         = 75;
constant CURLOPT_RANDOM_FILE is export          = 10076;
constant CURLOPT_EGDSOCKET is export            = 10077;
constant CURLOPT_CONNECTTIMEOUT is export       = 78;
constant CURLOPT_HEADERFUNCTION is export       = 20079;
constant CURLOPT_HTTPGET is export              = 80;
constant CURLOPT_COOKIEJAR is export            = 10082;
constant CURLOPT_SSL_CIPHER_LIST is export      = 10083;
constant CURLOPT_HTTP_VERSION is export         = 84;
constant CURLOPT_FTP_USE_EPSV is export         = 85;
constant CURLOPT_SSLCERTTYPE is export          = 10086;
constant CURLOPT_SSLKEY is export               = 10087;
constant CURLOPT_SSLKEYTYPE is export           = 10088;
constant CURLOPT_SSLENGINE is export            = 10089;
constant CURLOPT_SSLENGINE_DEFAULT is export    = 90;
constant CURLOPT_DNS_USE_GLOBAL_CACHE is export = 91;
constant CURLOPT_DNS_CACHE_TIMEOUT is export    = 92;
constant CURLOPT_PREQUOTE is export             = 10093;
constant CURLOPT_DEBUGFUNCTION is export        = 20094;
constant CURLOPT_DEBUGDATA is export            = 10095;
constant CURLOPT_COOKIESESSION is export        = 96;
constant CURLOPT_CAPATH is export               = 10097;
constant CURLOPT_BUFFERSIZE is export           = 98;
constant CURLOPT_NOSIGNAL is export             = 99;
constant CURLOPT_SHARE is export                = 10100;
constant CURLOPT_PROXYTYPE is export            = 101;
constant CURLOPT_ACCEPT_ENCODING is export      = 10102;
constant CURLOPT_PRIVATE is export              = 10103;
constant CURLOPT_HTTP200ALIASES is export       = 10104;
constant CURLOPT_UNRESTRICTED_AUTH is export    = 105;
constant CURLOPT_FTP_USE_EPRT is export         = 106;
constant CURLOPT_HTTPAUTH is export             = 107;
constant CURLOPT_SSL_CTX_FUNCTION is export     = 20108;
constant CURLOPT_SSL_CTX_DATA is export         = 10109;
constant CURLOPT_PROXYAUTH is export            = 111;
constant CURLOPT_FTP_RESPONSE_TIMEOUT is export = 112;
constant CURLOPT_IPRESOLVE is export            = 113;
constant CURLOPT_MAXFILESIZE is export          = 114;
constant CURLOPT_INFILESIZE_LARGE is export     = 30115;
constant CURLOPT_RESUME_FROM_LARGE is export    = 30116;
constant CURLOPT_MAXFILESIZE_LARGE is export    = 30117;
constant CURLOPT_NETRC_FILE is export           = 10118;
constant CURLOPT_USE_SSL is export              = 119;
constant CURLOPT_POSTFIELDSIZE_LARGE is export  = 30120;
constant CURLOPT_TCP_NODELAY is export          = 121;
constant CURLOPT_FTPSSLAUTH is export           = 129;
constant CURLOPT_IOCTLFUNCTION is export        = 20130;
constant CURLOPT_IOCTLDATA is export            = 10131;
constant CURLOPT_FTP_ACCOUNT is export          = 10134;
constant CURLOPT_COOKIELIST is export           = 10135;
constant CURLOPT_IGNORE_CONTENT_LENGTH is export= 136;
constant CURLOPT_FTP_SKIP_PASV_IP is export     = 137;
constant CURLOPT_FTP_FILEMETHOD is export       = 138;
constant CURLOPT_LOCALPORT is export            = 139;
constant CURLOPT_LOCALPORTRANGE is export       = 140;
constant CURLOPT_CONNECT_ONLY is export         = 141;
constant CURLOPT_FTP_CREATE_MISSING_DIRS is export      = 110;
constant CURLOPT_CONV_FROM_NETWORK_FUNCTION is export   = 20142;
constant CURLOPT_CONV_TO_NETWORK_FUNCTION is export     = 20143;
constant CURLOPT_CONV_FROM_UTF8_FUNCTION is export      = 20144;
constant CURLOPT_MAX_SEND_SPEED_LARGE is export         = 30145;
constant CURLOPT_MAX_RECV_SPEED_LARGE is export         = 30146;
constant CURLOPT_FTP_ALTERNATIVE_TO_USER is export      = 10147;
constant CURLOPT_SSH_HOST_PUBLIC_KEY_MD5 is export      = 10162;
constant CURLOPT_HTTP_TRANSFER_DECODING is export       = 157;
constant CURLOPT_SOCKOPTFUNCTION is export      = 20148;
constant CURLOPT_SOCKOPTDATA is export          = 10149;
constant CURLOPT_SSL_SESSIONID_CACHE is export  = 150;
constant CURLOPT_SSH_AUTH_TYPES is export       = 151;
constant CURLOPT_SSH_PUBLIC_KEYFILE is export   = 10152;
constant CURLOPT_SSH_PRIVATE_KEYFILE is export  = 10153;
constant CURLOPT_FTP_SSL_CCC is export          = 154;
constant CURLOPT_TIMEOUT_MS is export           = 155;
constant CURLOPT_CONNECTTIMEOUT_MS is export    = 156;
constant CURLOPT_HTTP_CONTENT_DECODING is export= 158;
constant CURLOPT_NEW_FILE_PERMS is export       = 159;
constant CURLOPT_NEW_DIRECTORY_PERMS is export  = 160;
constant CURLOPT_POSTREDIR is export            = 161;
constant CURLOPT_OPENSOCKETFUNCTION is export   = 20163;
constant CURLOPT_OPENSOCKETDATA is export       = 10164;
constant CURLOPT_COPYPOSTFIELDS is export       = 10165;
constant CURLOPT_PROXY_TRANSFER_MODE is export  = 166;
constant CURLOPT_SEEKFUNCTION is export         = 20167;
constant CURLOPT_SEEKDATA is export             = 10168;
constant CURLOPT_CRLFILE is export              = 10169;
constant CURLOPT_ISSUERCERT is export           = 10170;
constant CURLOPT_ADDRESS_SCOPE is export        = 171;
constant CURLOPT_CERTINFO is export             = 172;
constant CURLOPT_USERNAME is export             = 10173;
constant CURLOPT_PASSWORD is export             = 10174;
constant CURLOPT_PROXYUSERNAME is export        = 10175;
constant CURLOPT_PROXYPASSWORD is export        = 10176;
constant CURLOPT_NOPROXY is export              = 10177;
constant CURLOPT_TFTP_BLKSIZE is export         = 178;
constant CURLOPT_SOCKS5_GSSAPI_SERVICE is export= 10179;
constant CURLOPT_SOCKS5_GSSAPI_NEC is export    = 180;
constant CURLOPT_PROTOCOLS is export            = 181;
constant CURLOPT_REDIR_PROTOCOLS is export      = 182;
constant CURLOPT_SSH_KNOWNHOSTS is export       = 10183;
constant CURLOPT_SSH_KEYFUNCTION is export      = 20184;
constant CURLOPT_SSH_KEYDATA is export          = 10185;
constant CURLOPT_MAIL_FROM is export            = 10186;
constant CURLOPT_MAIL_RCPT is export            = 10187;
constant CURLOPT_FTP_USE_PRET is export         = 188;
constant CURLOPT_RTSP_REQUEST is export         = 189;
constant CURLOPT_RTSP_SESSION_ID is export      = 10190;
constant CURLOPT_RTSP_STREAM_URI is export      = 10191;
constant CURLOPT_RTSP_TRANSPORT is export       = 10192;
constant CURLOPT_RTSP_CLIENT_CSEQ is export     = 193;
constant CURLOPT_RTSP_SERVER_CSEQ is export     = 194;
constant CURLOPT_INTERLEAVEDATA is export       = 10195;
constant CURLOPT_INTERLEAVEFUNCTION is export   = 20196;
constant CURLOPT_WILDCARDMATCH is export        = 197;
constant CURLOPT_CHUNK_BGN_FUNCTION is export   = 20198;
constant CURLOPT_CHUNK_END_FUNCTION is export   = 20199;
constant CURLOPT_FNMATCH_FUNCTION is export     = 20200;
constant CURLOPT_CHUNK_DATA is export           = 10201;
constant CURLOPT_FNMATCH_DATA is export         = 10202;
constant CURLOPT_RESOLVE is export              = 10203;
constant CURLOPT_TLSAUTH_USERNAME is export     = 10204;
constant CURLOPT_TLSAUTH_PASSWORD is export     = 10205;
constant CURLOPT_TLSAUTH_TYPE is export         = 10206;
constant CURLOPT_TRANSFER_ENCODING is export    = 207;
constant CURLOPT_CLOSESOCKETFUNCTION is export  = 20208;
constant CURLOPT_CLOSESOCKETDATA is export      = 10209;
constant CURLOPT_GSSAPI_DELEGATION is export    = 210;
constant CURLOPT_DNS_SERVERS is export          = 10211;
constant CURLOPT_ACCEPTTIMEOUT_MS is export     = 212;
constant CURLOPT_TCP_KEEPALIVE is export        = 213;
constant CURLOPT_TCP_KEEPIDLE is export         = 214;
constant CURLOPT_TCP_KEEPINTVL is export        = 215;
constant CURLOPT_SSL_OPTIONS is export          = 216;
constant CURLOPT_MAIL_AUTH is export            = 10217;

# Start a libcurl easy session 
sub curl_easy_init() 
	returns OpaquePointer
	is native(LIB)
	is export { ... };

# End a libcurl easy session
sub curl_easy_cleanup(OpaquePointer)
	is native(LIB)
	is export { ... };

sub _curl_easy_setopt(OpaquePointer, uint32, Str)
    returns uint32
    is native(LIB)
    is symbol('curl_easy_setopt')
    is export { ... }

sub _curl_easy_setopt_int32(OpaquePointer, uint32, int32)
    returns uint32
    is native(LIB)
    is symbol('curl_easy_setopt')
    { ... }

# NOTE Waiting for multiple signatures
my sub _curl_easy_setopt_cb(OpaquePointer, uint32, &cb (Pointer $ptr, uint32 $size, uint32 $nmemb, OpaquePointer $stream --> uint32))
    returns uint32
    is native(LIB)
    is symbol('curl_easy_setopt') { ... }

# Pass an empty buffer or string and returns it with data filled after curl_easy_perform()
# On Str type it will decode the buffer to latin1
# For Buf type you must decode it manualy. For example my $buf = Buf.new(); `perform` my Str $s = $buf.decode('utf-8')
# curl_easy_setopt( $curl, CURLOPT_WRITEDATA, Str $body is rw );
# curl_easy_setopt( $curl, CURLOPT_WRITEDATA, Buf $body is rw );
# curl_easy_setopt( $curl, CURLOPT_WRITEDATA, IO::Handle $body is rw ); # you must close your FH
# TODO add ref to function ( $value )
multi sub curl_easy_setopt(OpaquePointer $point, CURLOPT_WRITEDATA, $value is rw) returns int32 is export {

    die "Invalid type to write data to. Use Str|Buf|IO::Handle" if $value !~~ Str|Buf|IO::Handle ;

    my Bool $is_str   = $value ~~ Str ;
    my Bool $is_file  = $value ~~ IO::Handle;
    my Bool $is_buf   = $value ~~ Buf ;

    $value = Buf.new if $is_buf;
    $value = ''      if $is_str;

    # size_t write_callback(char *ptr, size_t size, size_t nmemb, void *userdata);
    sub callback( Pointer $ptr , uint32 $size, uint32 $nmemb, OpaquePointer $wtf --> uint32 ) {

        my $bytes = nativecast( CArray[int8], $ptr ) ;
        my $buf   = Buf.new( $bytes[0..($size*$nmemb-1)] );

        $buf    = $buf.decode('latin1') if $is_str ;# TODO in the future process encodings ?

        if $is_buf || $is_str {
            $value ~= $buf ;
        }
        elsif $is_file {
            $value.write( $buf );
        }

        CATCH {
            warn "Failed to process chunk";
            warn $_;
        }

        return $size * $nmemb;
    }

    return _curl_easy_setopt_cb($point, CURLOPT_WRITEFUNCTION, &callback);
}

# CURLcode curl_easy_setopt(CURL *handle, CURLoption option, parameter); 
# CURLcode - status codes
multi sub curl_easy_setopt(OpaquePointer $point, Int:D $code, Str $value) returns int32 is export {

    return _curl_easy_setopt($point, $code, $value);
}

multi sub curl_easy_setopt(OpaquePointer $point, Int:D $code, Int:D $value) returns int32 is export {
    return _curl_easy_setopt_int32($point, $code, $value);
}


# Perform a file transfer
sub curl_easy_perform(OpaquePointer)
	returns uint32
	is native(LIB) 
	is export { ... };

# Return the string describing error code
# const char *curl_easy_strerror(CURLcode errornum); 
sub curl_easy_strerror(uint8)
	returns Str
	is native(LIB) 
	is export { ... };

# Return the libcurl version string
sub curl_easy_version()
	returns Str
	is native(LIB)
	is export { ... };

# Extract information from a curl handle
# CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ... ); 
sub curl_easy_getinfo(OpaquePointer, uint8, CArray[Str])
	returns uint8
	is native(LIB)
	is export { ... };

# CURLcode curl_global_init(long flags ); 
sub curl_global_init(int32)
	returns uint8
	is native(LIB)
	is export { ... };

sub curl_global_cleanup
	is native(LIB)
	is export { ... };
