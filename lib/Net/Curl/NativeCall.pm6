use v6;

unit module Net::Curl::NativeCall;

use NativeCall;

## Generated using gptrixie --all /usr/include/curl/curl.h -I /usr/include/curl/ > Generated.pm6
## And then modified by hand

constant LIB = "curl";

constant curl_socket_t is export = uint32;

constant CURL_GLOBAL_SSL       is export = (1 +< 0);
constant CURL_GLOBAL_WIN32     is export = (1 +< 1);
constant CURL_GLOBAL_ALL       is export = (CURL_GLOBAL_SSL +| CURL_GLOBAL_WIN32);
constant CURL_GLOBAL_NOTHING   is export = 0;
constant CURL_GLOBAL_DEFAULT   is export = CURL_GLOBAL_ALL;
constant CURL_GLOBAL_ACK_EINTR is export = (1 +< 2);

## Enumerations

# == /usr/include/curl/multi.h ==

enum CURLMcode is export (
   CURLM_CALL_MULTI_PERFORM => -1,
   CURLM_OK => 0,
   CURLM_BAD_HANDLE => 1,
   CURLM_BAD_EASY_HANDLE => 2,
   CURLM_OUT_OF_MEMORY => 3,
   CURLM_INTERNAL_ERROR => 4,
   CURLM_BAD_SOCKET => 5,
   CURLM_UNKNOWN_OPTION => 6,
   CURLM_ADDED_ALREADY => 7,
   CURLM_LAST => 8
);
enum CURLMSG is export (
   CURLMSG_NONE => 0,
   CURLMSG_DONE => 1,
   CURLMSG_LAST => 2
);
enum CURLMoption is export (
   CURLMOPT_SOCKETFUNCTION => 20001,
   CURLMOPT_SOCKETDATA => 10002,
   CURLMOPT_PIPELINING => 3,
   CURLMOPT_TIMERFUNCTION => 20004,
   CURLMOPT_TIMERDATA => 10005,
   CURLMOPT_MAXCONNECTS => 6,
   CURLMOPT_MAX_HOST_CONNECTIONS => 7,
   CURLMOPT_MAX_PIPELINE_LENGTH => 8,
   CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE => 30009,
   CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE => 30010,
   CURLMOPT_PIPELINING_SITE_BL => 10011,
   CURLMOPT_PIPELINING_SERVER_BL => 10012,
   CURLMOPT_MAX_TOTAL_CONNECTIONS => 13,
   CURLMOPT_LASTENTRY => 14
);

# == /usr/include/curl/curl.h ==

enum curlfiletype is export (
   CURLFILETYPE_FILE => 0,
   CURLFILETYPE_DIRECTORY => 1,
   CURLFILETYPE_SYMLINK => 2,
   CURLFILETYPE_DEVICE_BLOCK => 3,
   CURLFILETYPE_DEVICE_CHAR => 4,
   CURLFILETYPE_NAMEDPIPE => 5,
   CURLFILETYPE_SOCKET => 6,
   CURLFILETYPE_DOOR => 7,
   CURLFILETYPE_UNKNOWN => 8
);
enum curlsocktype is export (
   CURLSOCKTYPE_IPCXN => 0,
   CURLSOCKTYPE_ACCEPT => 1,
   CURLSOCKTYPE_LAST => 2
);
enum curlioerr is export (
   CURLIOE_OK => 0,
   CURLIOE_UNKNOWNCMD => 1,
   CURLIOE_FAILRESTART => 2,
   CURLIOE_LAST => 3
);
enum curliocmd is export (
   CURLIOCMD_NOP => 0,
   CURLIOCMD_RESTARTREAD => 1,
   CURLIOCMD_LAST => 2
);
enum curl_infotype is export (
   CURLINFO_TEXT => 0,
   CURLINFO_HEADER_IN => 1,
   CURLINFO_HEADER_OUT => 2,
   CURLINFO_DATA_IN => 3,
   CURLINFO_DATA_OUT => 4,
   CURLINFO_SSL_DATA_IN => 5,
   CURLINFO_SSL_DATA_OUT => 6,
   CURLINFO_END => 7
);
enum CURLcode is export (
   CURLE_OK => 0,
   CURLE_UNSUPPORTED_PROTOCOL => 1,
   CURLE_FAILED_INIT => 2,
   CURLE_URL_MALFORMAT => 3,
   CURLE_NOT_BUILT_IN => 4,
   CURLE_COULDNT_RESOLVE_PROXY => 5,
   CURLE_COULDNT_RESOLVE_HOST => 6,
   CURLE_COULDNT_CONNECT => 7,
   CURLE_FTP_WEIRD_SERVER_REPLY => 8,
   CURLE_REMOTE_ACCESS_DENIED => 9,
   CURLE_FTP_ACCEPT_FAILED => 10,
   CURLE_FTP_WEIRD_PASS_REPLY => 11,
   CURLE_FTP_ACCEPT_TIMEOUT => 12,
   CURLE_FTP_WEIRD_PASV_REPLY => 13,
   CURLE_FTP_WEIRD_227_FORMAT => 14,
   CURLE_FTP_CANT_GET_HOST => 15,
   CURLE_OBSOLETE16 => 16,
   CURLE_FTP_COULDNT_SET_TYPE => 17,
   CURLE_PARTIAL_FILE => 18,
   CURLE_FTP_COULDNT_RETR_FILE => 19,
   CURLE_OBSOLETE20 => 20,
   CURLE_QUOTE_ERROR => 21,
   CURLE_HTTP_RETURNED_ERROR => 22,
   CURLE_WRITE_ERROR => 23,
   CURLE_OBSOLETE24 => 24,
   CURLE_UPLOAD_FAILED => 25,
   CURLE_READ_ERROR => 26,
   CURLE_OUT_OF_MEMORY => 27,
   CURLE_OPERATION_TIMEDOUT => 28,
   CURLE_OBSOLETE29 => 29,
   CURLE_FTP_PORT_FAILED => 30,
   CURLE_FTP_COULDNT_USE_REST => 31,
   CURLE_OBSOLETE32 => 32,
   CURLE_RANGE_ERROR => 33,
   CURLE_HTTP_POST_ERROR => 34,
   CURLE_SSL_CONNECT_ERROR => 35,
   CURLE_BAD_DOWNLOAD_RESUME => 36,
   CURLE_FILE_COULDNT_READ_FILE => 37,
   CURLE_LDAP_CANNOT_BIND => 38,
   CURLE_LDAP_SEARCH_FAILED => 39,
   CURLE_OBSOLETE40 => 40,
   CURLE_FUNCTION_NOT_FOUND => 41,
   CURLE_ABORTED_BY_CALLBACK => 42,
   CURLE_BAD_FUNCTION_ARGUMENT => 43,
   CURLE_OBSOLETE44 => 44,
   CURLE_INTERFACE_FAILED => 45,
   CURLE_OBSOLETE46 => 46,
   CURLE_TOO_MANY_REDIRECTS => 47,
   CURLE_UNKNOWN_OPTION => 48,
   CURLE_TELNET_OPTION_SYNTAX => 49,
   CURLE_OBSOLETE50 => 50,
   CURLE_PEER_FAILED_VERIFICATION => 51,
   CURLE_GOT_NOTHING => 52,
   CURLE_SSL_ENGINE_NOTFOUND => 53,
   CURLE_SSL_ENGINE_SETFAILED => 54,
   CURLE_SEND_ERROR => 55,
   CURLE_RECV_ERROR => 56,
   CURLE_OBSOLETE57 => 57,
   CURLE_SSL_CERTPROBLEM => 58,
   CURLE_SSL_CIPHER => 59,
   CURLE_SSL_CACERT => 60,
   CURLE_BAD_CONTENT_ENCODING => 61,
   CURLE_LDAP_INVALID_URL => 62,
   CURLE_FILESIZE_EXCEEDED => 63,
   CURLE_USE_SSL_FAILED => 64,
   CURLE_SEND_FAIL_REWIND => 65,
   CURLE_SSL_ENGINE_INITFAILED => 66,
   CURLE_LOGIN_DENIED => 67,
   CURLE_TFTP_NOTFOUND => 68,
   CURLE_TFTP_PERM => 69,
   CURLE_REMOTE_DISK_FULL => 70,
   CURLE_TFTP_ILLEGAL => 71,
   CURLE_TFTP_UNKNOWNID => 72,
   CURLE_REMOTE_FILE_EXISTS => 73,
   CURLE_TFTP_NOSUCHUSER => 74,
   CURLE_CONV_FAILED => 75,
   CURLE_CONV_REQD => 76,
   CURLE_SSL_CACERT_BADFILE => 77,
   CURLE_REMOTE_FILE_NOT_FOUND => 78,
   CURLE_SSH => 79,
   CURLE_SSL_SHUTDOWN_FAILED => 80,
   CURLE_AGAIN => 81,
   CURLE_SSL_CRL_BADFILE => 82,
   CURLE_SSL_ISSUER_ERROR => 83,
   CURLE_FTP_PRET_FAILED => 84,
   CURLE_RTSP_CSEQ_ERROR => 85,
   CURLE_RTSP_SESSION_ERROR => 86,
   CURLE_FTP_BAD_FILE_LIST => 87,
   CURLE_CHUNK_FAILED => 88,
   CURLE_NO_CONNECTION_AVAILABLE => 89,
   CURL_LAST => 90
);
enum curl_proxytype is export (
   CURLPROXY_HTTP => 0,
   CURLPROXY_HTTP_1_0 => 1,
   CURLPROXY_SOCKS4 => 4,
   CURLPROXY_SOCKS5 => 5,
   CURLPROXY_SOCKS4A => 6,
   CURLPROXY_SOCKS5_HOSTNAME => 7
);
enum curl_khtype is export (
   CURLKHTYPE_UNKNOWN => 0,
   CURLKHTYPE_RSA1 => 1,
   CURLKHTYPE_RSA => 2,
   CURLKHTYPE_DSS => 3
);
enum curl_khstat is export (
   CURLKHSTAT_FINE_ADD_TO_FILE => 0,
   CURLKHSTAT_FINE => 1,
   CURLKHSTAT_REJECT => 2,
   CURLKHSTAT_DEFER => 3,
   CURLKHSTAT_LAST => 4
);
enum curl_khmatch is export (
   CURLKHMATCH_OK => 0,
   CURLKHMATCH_MISMATCH => 1,
   CURLKHMATCH_MISSING => 2,
   CURLKHMATCH_LAST => 3
);
enum curl_usessl is export (
   CURLUSESSL_NONE => 0,
   CURLUSESSL_TRY => 1,
   CURLUSESSL_CONTROL => 2,
   CURLUSESSL_ALL => 3,
   CURLUSESSL_LAST => 4
);
enum curl_ftpccc is export (
   CURLFTPSSL_CCC_NONE => 0,
   CURLFTPSSL_CCC_PASSIVE => 1,
   CURLFTPSSL_CCC_ACTIVE => 2,
   CURLFTPSSL_CCC_LAST => 3
);
enum curl_ftpauth is export (
   CURLFTPAUTH_DEFAULT => 0,
   CURLFTPAUTH_SSL => 1,
   CURLFTPAUTH_TLS => 2,
   CURLFTPAUTH_LAST => 3
);
enum curl_ftpcreatedir is export (
   CURLFTP_CREATE_DIR_NONE => 0,
   CURLFTP_CREATE_DIR => 1,
   CURLFTP_CREATE_DIR_RETRY => 2,
   CURLFTP_CREATE_DIR_LAST => 3
);
enum curl_ftpmethod is export (
   CURLFTPMETHOD_DEFAULT => 0,
   CURLFTPMETHOD_MULTICWD => 1,
   CURLFTPMETHOD_NOCWD => 2,
   CURLFTPMETHOD_SINGLECWD => 3,
   CURLFTPMETHOD_LAST => 4
);
enum CURLoption is export (
   CURLOPT_FILE => 10001,
   CURLOPT_URL => 10002,
   CURLOPT_PORT => 3,
   CURLOPT_PROXY => 10004,
   CURLOPT_USERPWD => 10005,
   CURLOPT_PROXYUSERPWD => 10006,
   CURLOPT_RANGE => 10007,
   CURLOPT_INFILE => 10009,
   CURLOPT_ERRORBUFFER => 10010,
   CURLOPT_WRITEFUNCTION => 20011,
   CURLOPT_READFUNCTION => 20012,
   CURLOPT_TIMEOUT => 13,
   CURLOPT_INFILESIZE => 14,
   CURLOPT_POSTFIELDS => 10015,
   CURLOPT_REFERER => 10016,
   CURLOPT_FTPPORT => 10017,
   CURLOPT_USERAGENT => 10018,
   CURLOPT_LOW_SPEED_LIMIT => 19,
   CURLOPT_LOW_SPEED_TIME => 20,
   CURLOPT_RESUME_FROM => 21,
   CURLOPT_COOKIE => 10022,
   CURLOPT_HTTPHEADER => 10023,
   CURLOPT_HTTPPOST => 10024,
   CURLOPT_SSLCERT => 10025,
   CURLOPT_KEYPASSWD => 10026,
   CURLOPT_CRLF => 27,
   CURLOPT_QUOTE => 10028,
   CURLOPT_WRITEHEADER => 10029,
   CURLOPT_COOKIEFILE => 10031,
   CURLOPT_SSLVERSION => 32,
   CURLOPT_TIMECONDITION => 33,
   CURLOPT_TIMEVALUE => 34,
   CURLOPT_CUSTOMREQUEST => 10036,
   CURLOPT_STDERR => 10037,
   CURLOPT_POSTQUOTE => 10039,
   CURLOPT_WRITEINFO => 10040,
   CURLOPT_VERBOSE => 41,
   CURLOPT_HEADER => 42,
   CURLOPT_NOPROGRESS => 43,
   CURLOPT_NOBODY => 44,
   CURLOPT_FAILONERROR => 45,
   CURLOPT_UPLOAD => 46,
   CURLOPT_POST => 47,
   CURLOPT_DIRLISTONLY => 48,
   CURLOPT_APPEND => 50,
   CURLOPT_NETRC => 51,
   CURLOPT_FOLLOWLOCATION => 52,
   CURLOPT_TRANSFERTEXT => 53,
   CURLOPT_PUT => 54,
   CURLOPT_PROGRESSFUNCTION => 20056,
   CURLOPT_PROGRESSDATA => 10057,
   CURLOPT_AUTOREFERER => 58,
   CURLOPT_PROXYPORT => 59,
   CURLOPT_POSTFIELDSIZE => 60,
   CURLOPT_HTTPPROXYTUNNEL => 61,
   CURLOPT_INTERFACE => 10062,
   CURLOPT_KRBLEVEL => 10063,
   CURLOPT_SSL_VERIFYPEER => 64,
   CURLOPT_CAINFO => 10065,
   CURLOPT_MAXREDIRS => 68,
   CURLOPT_FILETIME => 69,
   CURLOPT_TELNETOPTIONS => 10070,
   CURLOPT_MAXCONNECTS => 71,
   CURLOPT_CLOSEPOLICY => 72,
   CURLOPT_FRESH_CONNECT => 74,
   CURLOPT_FORBID_REUSE => 75,
   CURLOPT_RANDOM_FILE => 10076,
   CURLOPT_EGDSOCKET => 10077,
   CURLOPT_CONNECTTIMEOUT => 78,
   CURLOPT_HEADERFUNCTION => 20079,
   CURLOPT_HTTPGET => 80,
   CURLOPT_SSL_VERIFYHOST => 81,
   CURLOPT_COOKIEJAR => 10082,
   CURLOPT_SSL_CIPHER_LIST => 10083,
   CURLOPT_HTTP_VERSION => 84,
   CURLOPT_FTP_USE_EPSV => 85,
   CURLOPT_SSLCERTTYPE => 10086,
   CURLOPT_SSLKEY => 10087,
   CURLOPT_SSLKEYTYPE => 10088,
   CURLOPT_SSLENGINE => 10089,
   CURLOPT_SSLENGINE_DEFAULT => 90,
   CURLOPT_DNS_USE_GLOBAL_CACHE => 91,
   CURLOPT_DNS_CACHE_TIMEOUT => 92,
   CURLOPT_PREQUOTE => 10093,
   CURLOPT_DEBUGFUNCTION => 20094,
   CURLOPT_DEBUGDATA => 10095,
   CURLOPT_COOKIESESSION => 96,
   CURLOPT_CAPATH => 10097,
   CURLOPT_BUFFERSIZE => 98,
   CURLOPT_NOSIGNAL => 99,
   CURLOPT_SHARE => 10100,
   CURLOPT_PROXYTYPE => 101,
   CURLOPT_ACCEPT_ENCODING => 10102,
   CURLOPT_PRIVATE => 10103,
   CURLOPT_HTTP200ALIASES => 10104,
   CURLOPT_UNRESTRICTED_AUTH => 105,
   CURLOPT_FTP_USE_EPRT => 106,
   CURLOPT_HTTPAUTH => 107,
   CURLOPT_SSL_CTX_FUNCTION => 20108,
   CURLOPT_SSL_CTX_DATA => 10109,
   CURLOPT_FTP_CREATE_MISSING_DIRS => 110,
   CURLOPT_PROXYAUTH => 111,
   CURLOPT_FTP_RESPONSE_TIMEOUT => 112,
   CURLOPT_IPRESOLVE => 113,
   CURLOPT_MAXFILESIZE => 114,
   CURLOPT_INFILESIZE_LARGE => 30115,
   CURLOPT_RESUME_FROM_LARGE => 30116,
   CURLOPT_MAXFILESIZE_LARGE => 30117,
   CURLOPT_NETRC_FILE => 10118,
   CURLOPT_USE_SSL => 119,
   CURLOPT_POSTFIELDSIZE_LARGE => 30120,
   CURLOPT_TCP_NODELAY => 121,
   CURLOPT_FTPSSLAUTH => 129,
   CURLOPT_IOCTLFUNCTION => 20130,
   CURLOPT_IOCTLDATA => 10131,
   CURLOPT_FTP_ACCOUNT => 10134,
   CURLOPT_COOKIELIST => 10135,
   CURLOPT_IGNORE_CONTENT_LENGTH => 136,
   CURLOPT_FTP_SKIP_PASV_IP => 137,
   CURLOPT_FTP_FILEMETHOD => 138,
   CURLOPT_LOCALPORT => 139,
   CURLOPT_LOCALPORTRANGE => 140,
   CURLOPT_CONNECT_ONLY => 141,
   CURLOPT_CONV_FROM_NETWORK_FUNCTION => 20142,
   CURLOPT_CONV_TO_NETWORK_FUNCTION => 20143,
   CURLOPT_CONV_FROM_UTF8_FUNCTION => 20144,
   CURLOPT_MAX_SEND_SPEED_LARGE => 30145,
   CURLOPT_MAX_RECV_SPEED_LARGE => 30146,
   CURLOPT_FTP_ALTERNATIVE_TO_USER => 10147,
   CURLOPT_SOCKOPTFUNCTION => 20148,
   CURLOPT_SOCKOPTDATA => 10149,
   CURLOPT_SSL_SESSIONID_CACHE => 150,
   CURLOPT_SSH_AUTH_TYPES => 151,
   CURLOPT_SSH_PUBLIC_KEYFILE => 10152,
   CURLOPT_SSH_PRIVATE_KEYFILE => 10153,
   CURLOPT_FTP_SSL_CCC => 154,
   CURLOPT_TIMEOUT_MS => 155,
   CURLOPT_CONNECTTIMEOUT_MS => 156,
   CURLOPT_HTTP_TRANSFER_DECODING => 157,
   CURLOPT_HTTP_CONTENT_DECODING => 158,
   CURLOPT_NEW_FILE_PERMS => 159,
   CURLOPT_NEW_DIRECTORY_PERMS => 160,
   CURLOPT_POSTREDIR => 161,
   CURLOPT_SSH_HOST_PUBLIC_KEY_MD5 => 10162,
   CURLOPT_OPENSOCKETFUNCTION => 20163,
   CURLOPT_OPENSOCKETDATA => 10164,
   CURLOPT_COPYPOSTFIELDS => 10165,
   CURLOPT_PROXY_TRANSFER_MODE => 166,
   CURLOPT_SEEKFUNCTION => 20167,
   CURLOPT_SEEKDATA => 10168,
   CURLOPT_CRLFILE => 10169,
   CURLOPT_ISSUERCERT => 10170,
   CURLOPT_ADDRESS_SCOPE => 171,
   CURLOPT_CERTINFO => 172,
   CURLOPT_USERNAME => 10173,
   CURLOPT_PASSWORD => 10174,
   CURLOPT_PROXYUSERNAME => 10175,
   CURLOPT_PROXYPASSWORD => 10176,
   CURLOPT_NOPROXY => 10177,
   CURLOPT_TFTP_BLKSIZE => 178,
   CURLOPT_SOCKS5_GSSAPI_SERVICE => 10179,
   CURLOPT_SOCKS5_GSSAPI_NEC => 180,
   CURLOPT_PROTOCOLS => 181,
   CURLOPT_REDIR_PROTOCOLS => 182,
   CURLOPT_SSH_KNOWNHOSTS => 10183,
   CURLOPT_SSH_KEYFUNCTION => 20184,
   CURLOPT_SSH_KEYDATA => 10185,
   CURLOPT_MAIL_FROM => 10186,
   CURLOPT_MAIL_RCPT => 10187,
   CURLOPT_FTP_USE_PRET => 188,
   CURLOPT_RTSP_REQUEST => 189,
   CURLOPT_RTSP_SESSION_ID => 10190,
   CURLOPT_RTSP_STREAM_URI => 10191,
   CURLOPT_RTSP_TRANSPORT => 10192,
   CURLOPT_RTSP_CLIENT_CSEQ => 193,
   CURLOPT_RTSP_SERVER_CSEQ => 194,
   CURLOPT_INTERLEAVEDATA => 10195,
   CURLOPT_INTERLEAVEFUNCTION => 20196,
   CURLOPT_WILDCARDMATCH => 197,
   CURLOPT_CHUNK_BGN_FUNCTION => 20198,
   CURLOPT_CHUNK_END_FUNCTION => 20199,
   CURLOPT_FNMATCH_FUNCTION => 20200,
   CURLOPT_CHUNK_DATA => 10201,
   CURLOPT_FNMATCH_DATA => 10202,
   CURLOPT_RESOLVE => 10203,
   CURLOPT_TLSAUTH_USERNAME => 10204,
   CURLOPT_TLSAUTH_PASSWORD => 10205,
   CURLOPT_TLSAUTH_TYPE => 10206,
   CURLOPT_TRANSFER_ENCODING => 207,
   CURLOPT_CLOSESOCKETFUNCTION => 20208,
   CURLOPT_CLOSESOCKETDATA => 10209,
   CURLOPT_GSSAPI_DELEGATION => 210,
   CURLOPT_DNS_SERVERS => 10211,
   CURLOPT_ACCEPTTIMEOUT_MS => 212,
   CURLOPT_TCP_KEEPALIVE => 213,
   CURLOPT_TCP_KEEPIDLE => 214,
   CURLOPT_TCP_KEEPINTVL => 215,
   CURLOPT_SSL_OPTIONS => 216,
   CURLOPT_MAIL_AUTH => 10217,
   CURLOPT_SASL_IR => 218,
   CURLOPT_XFERINFOFUNCTION => 20219,
   CURLOPT_XOAUTH2_BEARER => 10220,
   CURLOPT_DNS_INTERFACE => 10221,
   CURLOPT_DNS_LOCAL_IP4 => 10222,
   CURLOPT_DNS_LOCAL_IP6 => 10223,
   CURLOPT_LOGIN_OPTIONS => 10224,
   CURLOPT_LASTENTRY => 10225
);
enum _35 is export (
   CURL_HTTP_VERSION_NONE => 0,
   CURL_HTTP_VERSION_1_0 => 1,
   CURL_HTTP_VERSION_1_1 => 2,
   CURL_HTTP_VERSION_2_0 => 3,
   CURL_HTTP_VERSION_LAST => 4
);
enum _36 is export (
   CURL_RTSPREQ_NONE => 0,
   CURL_RTSPREQ_OPTIONS => 1,
   CURL_RTSPREQ_DESCRIBE => 2,
   CURL_RTSPREQ_ANNOUNCE => 3,
   CURL_RTSPREQ_SETUP => 4,
   CURL_RTSPREQ_PLAY => 5,
   CURL_RTSPREQ_PAUSE => 6,
   CURL_RTSPREQ_TEARDOWN => 7,
   CURL_RTSPREQ_GET_PARAMETER => 8,
   CURL_RTSPREQ_SET_PARAMETER => 9,
   CURL_RTSPREQ_RECORD => 10,
   CURL_RTSPREQ_RECEIVE => 11,
   CURL_RTSPREQ_LAST => 12
);
enum CURL_NETRC_OPTION is export (
   CURL_NETRC_IGNORED => 0,
   CURL_NETRC_OPTIONAL => 1,
   CURL_NETRC_REQUIRED => 2,
   CURL_NETRC_LAST => 3
);
enum _37 is export (
   CURL_SSLVERSION_DEFAULT => 0,
   CURL_SSLVERSION_TLSv1 => 1,
   CURL_SSLVERSION_SSLv2 => 2,
   CURL_SSLVERSION_SSLv3 => 3,
   CURL_SSLVERSION_TLSv1_0 => 4,
   CURL_SSLVERSION_TLSv1_1 => 5,
   CURL_SSLVERSION_TLSv1_2 => 6,
   CURL_SSLVERSION_LAST => 7
);
enum CURL_TLSAUTH is export (
   CURL_TLSAUTH_NONE => 0,
   CURL_TLSAUTH_SRP => 1,
   CURL_TLSAUTH_LAST => 2
);
enum curl_TimeCond is export (
   CURL_TIMECOND_NONE => 0,
   CURL_TIMECOND_IFMODSINCE => 1,
   CURL_TIMECOND_IFUNMODSINCE => 2,
   CURL_TIMECOND_LASTMOD => 3,
   CURL_TIMECOND_LAST => 4
);
enum CURLformoption is export (
   CURLFORM_NOTHING => 0,
   CURLFORM_COPYNAME => 1,
   CURLFORM_PTRNAME => 2,
   CURLFORM_NAMELENGTH => 3,
   CURLFORM_COPYCONTENTS => 4,
   CURLFORM_PTRCONTENTS => 5,
   CURLFORM_CONTENTSLENGTH => 6,
   CURLFORM_FILECONTENT => 7,
   CURLFORM_ARRAY => 8,
   CURLFORM_OBSOLETE => 9,
   CURLFORM_FILE => 10,
   CURLFORM_BUFFER => 11,
   CURLFORM_BUFFERPTR => 12,
   CURLFORM_BUFFERLENGTH => 13,
   CURLFORM_CONTENTTYPE => 14,
   CURLFORM_CONTENTHEADER => 15,
   CURLFORM_FILENAME => 16,
   CURLFORM_END => 17,
   CURLFORM_OBSOLETE2 => 18,
   CURLFORM_STREAM => 19,
   CURLFORM_LASTENTRY => 20
);
enum CURLFORMcode is export (
   CURL_FORMADD_OK => 0,
   CURL_FORMADD_MEMORY => 1,
   CURL_FORMADD_OPTION_TWICE => 2,
   CURL_FORMADD_NULL => 3,
   CURL_FORMADD_UNKNOWN_OPTION => 4,
   CURL_FORMADD_INCOMPLETE => 5,
   CURL_FORMADD_ILLEGAL_ARRAY => 6,
   CURL_FORMADD_DISABLED => 7,
   CURL_FORMADD_LAST => 8
);
enum curl_sslbackend is export (
   CURLSSLBACKEND_NONE => 0,
   CURLSSLBACKEND_OPENSSL => 1,
   CURLSSLBACKEND_GNUTLS => 2,
   CURLSSLBACKEND_NSS => 3,
   CURLSSLBACKEND_QSOSSL => 4,
   CURLSSLBACKEND_GSKIT => 5,
   CURLSSLBACKEND_POLARSSL => 6,
   CURLSSLBACKEND_CYASSL => 7,
   CURLSSLBACKEND_SCHANNEL => 8,
   CURLSSLBACKEND_DARWINSSL => 9
);
enum CURLINFO is export (
   CURLINFO_NONE => 0,
   CURLINFO_EFFECTIVE_URL => 1048577,
   CURLINFO_RESPONSE_CODE => 2097154,
   CURLINFO_TOTAL_TIME => 3145731,
   CURLINFO_NAMELOOKUP_TIME => 3145732,
   CURLINFO_CONNECT_TIME => 3145733,
   CURLINFO_PRETRANSFER_TIME => 3145734,
   CURLINFO_SIZE_UPLOAD => 3145735,
   CURLINFO_SIZE_DOWNLOAD => 3145736,
   CURLINFO_SPEED_DOWNLOAD => 3145737,
   CURLINFO_SPEED_UPLOAD => 3145738,
   CURLINFO_HEADER_SIZE => 2097163,
   CURLINFO_REQUEST_SIZE => 2097164,
   CURLINFO_SSL_VERIFYRESULT => 2097165,
   CURLINFO_FILETIME => 2097166,
   CURLINFO_CONTENT_LENGTH_DOWNLOAD => 3145743,
   CURLINFO_CONTENT_LENGTH_UPLOAD => 3145744,
   CURLINFO_STARTTRANSFER_TIME => 3145745,
   CURLINFO_CONTENT_TYPE => 1048594,
   CURLINFO_REDIRECT_TIME => 3145747,
   CURLINFO_REDIRECT_COUNT => 2097172,
   CURLINFO_PRIVATE => 1048597,
   CURLINFO_HTTP_CONNECTCODE => 2097174,
   CURLINFO_HTTPAUTH_AVAIL => 2097175,
   CURLINFO_PROXYAUTH_AVAIL => 2097176,
   CURLINFO_OS_ERRNO => 2097177,
   CURLINFO_NUM_CONNECTS => 2097178,
   CURLINFO_SSL_ENGINES => 4194331,
   CURLINFO_COOKIELIST => 4194332,
   CURLINFO_LASTSOCKET => 2097181,
   CURLINFO_FTP_ENTRY_PATH => 1048606,
   CURLINFO_REDIRECT_URL => 1048607,
   CURLINFO_PRIMARY_IP => 1048608,
   CURLINFO_APPCONNECT_TIME => 3145761,
   CURLINFO_CERTINFO => 4194338,
   CURLINFO_CONDITION_UNMET => 2097187,
   CURLINFO_RTSP_SESSION_ID => 1048612,
   CURLINFO_RTSP_CLIENT_CSEQ => 2097189,
   CURLINFO_RTSP_SERVER_CSEQ => 2097190,
   CURLINFO_RTSP_CSEQ_RECV => 2097191,
   CURLINFO_PRIMARY_PORT => 2097192,
   CURLINFO_LOCAL_IP => 1048617,
   CURLINFO_LOCAL_PORT => 2097194,
   CURLINFO_TLS_SESSION => 4194347,
   CURLINFO_LASTONE => 43
);
enum curl_closepolicy is export (
   CURLCLOSEPOLICY_NONE => 0,
   CURLCLOSEPOLICY_OLDEST => 1,
   CURLCLOSEPOLICY_LEAST_RECENTLY_USED => 2,
   CURLCLOSEPOLICY_LEAST_TRAFFIC => 3,
   CURLCLOSEPOLICY_SLOWEST => 4,
   CURLCLOSEPOLICY_CALLBACK => 5,
   CURLCLOSEPOLICY_LAST => 6
);
enum curl_lock_data is export (
   CURL_LOCK_DATA_NONE => 0,
   CURL_LOCK_DATA_SHARE => 1,
   CURL_LOCK_DATA_COOKIE => 2,
   CURL_LOCK_DATA_DNS => 3,
   CURL_LOCK_DATA_SSL_SESSION => 4,
   CURL_LOCK_DATA_CONNECT => 5,
   CURL_LOCK_DATA_LAST => 6
);
enum curl_lock_access is export (
   CURL_LOCK_ACCESS_NONE => 0,
   CURL_LOCK_ACCESS_SHARED => 1,
   CURL_LOCK_ACCESS_SINGLE => 2,
   CURL_LOCK_ACCESS_LAST => 3
);
enum CURLSHcode is export (
   CURLSHE_OK => 0,
   CURLSHE_BAD_OPTION => 1,
   CURLSHE_IN_USE => 2,
   CURLSHE_INVALID => 3,
   CURLSHE_NOMEM => 4,
   CURLSHE_NOT_BUILT_IN => 5,
   CURLSHE_LAST => 6
);
enum CURLSHoption is export (
   CURLSHOPT_NONE => 0,
   CURLSHOPT_SHARE => 1,
   CURLSHOPT_UNSHARE => 2,
   CURLSHOPT_LOCKFUNC => 3,
   CURLSHOPT_UNLOCKFUNC => 4,
   CURLSHOPT_USERDATA => 5,
   CURLSHOPT_LAST => 6
);
enum CURLversion is export (
   CURLVERSION_FIRST => 0,
   CURLVERSION_SECOND => 1,
   CURLVERSION_THIRD => 2,
   CURLVERSION_FOURTH => 3,
   CURLVERSION_LAST => 4
);


# Three convenient "aliases" that follow the name scheme better
constant CURLOPT_WRITEDATA  is export = CURLOPT_FILE;
constant CURLOPT_READDATA   is export = CURLOPT_INFILE;
constant CURLOPT_HEADERDATA is export = CURLOPT_WRITEHEADER;
constant CURLOPT_RTSPHEADER is export = CURLOPT_HTTPHEADER;

## Structures


# == /usr/include/curl/multi.h ==

class CURLMsg_data_Union is repr('CUnion') is export {
	has Pointer                       $.whatever; # void* whatever
	has int32                         $.result; # CURLcode result
}
class CURLMsg is repr('CStruct') is export {
	has int32                         $.msg; # CURLMSG msg
	has Pointer                       $.easy_handle; # Typedef<CURL>->|void|* easy_handle
	has CURLMsg_data_Union            $.data; # Union data
}
class curl_waitfd is repr('CStruct') is export {
	has curl_socket_t                 $.fd; # Typedef<curl_socket_t>->|int| fd
	has int16                         $.events; # short int events
	has int16                         $.revents; # short int revents
}

# == /usr/include/curl/curl.h ==

class curl_httppost is repr('CStruct') is export {
	has Pointer                       $.next; # curl_httppost* next
	has Str                           $.name; # char* name
	has long                          $.namelength; # long int namelength
	has Str                           $.contents; # char* contents
	has long                          $.contentslength; # long int contentslength
	has Str                           $.buffer; # char* buffer
	has long                          $.bufferlength; # long int bufferlength
	has Str                           $.contenttype; # char* contenttype
	has Pointer                       $.contentheader; # curl_slist* contentheader
	has Pointer                       $.more; # curl_httppost* more
	has long                          $.flags; # long int flags
	has Str                           $.showfilename; # char* showfilename
	has Pointer                       $.userp; # void* userp
}
class curl_fileinfo_strings is repr('CStruct') is export {
	has Str                           $.time; # char* time
	has Str                           $.perm; # char* perm
	has Str                           $.user; # char* user
	has Str                           $.group; # char* group
	has Str                           $.target; # char* target
}
class curl_fileinfo is repr('CStruct') is export {
	has Str                           $.filename; # char* filename
	has int32                         $.filetype; # curlfiletype filetype
	has int32                      $.time; # Typedef<time_t>->|Typedef<int32>->|long int|| time
	has uint32                        $.perm; # unsigned int perm
	has int32                         $.uid; # int uid
	has int32                         $.gid; # int gid
	has int32                    $.size; # Typedef<curl_off_t>->|long int| size
	has long                          $.hardlinks; # long int hardlinks
	has curl_fileinfo_strings        $.strings; # N13curl_fileinfo4._22E strings
	has uint32                        $.flags; # unsigned int flags
	has Str                           $.b_data; # char* b_data
	has size_t                        $.b_size; # Typedef<size_t>->|long unsigned int| b_size
	has size_t                        $.b_used; # Typedef<size_t>->|long unsigned int| b_used
}
class curl_sockaddr is repr('CStruct') is export {
	has int32                         $.family; # int family
	has int32                         $.socktype; # int socktype
	has int32                         $.protocol; # int protocol
	has uint32                        $.addrlen; # unsigned int addrlen
#TODO add this
##	has sockaddr                      $.addr; # sockaddr addr
}
class curl_khkey is repr('CStruct') is export {
	has Str                           $.key; # const char* key
	has size_t                        $.len; # Typedef<size_t>->|long unsigned int| len
	has int32                         $.keytype; # curl_khtype keytype
}
class curl_forms is repr('CStruct') is export {
	has int32                         $.option; # CURLformoption option
	has Str                           $.value; # const char* value
}
class curl_slist is repr('CStruct') is export {
	has Str                           $.data; # char* data
	has Pointer                       $.next; # curl_slist* next
}
class curl_certinfo is repr('CStruct') is export {
	has int32                         $.num_of_certs; # int num_of_certs
	has Pointer[Pointer[curl_slist]]  $.certinfo; # curl_slist** certinfo
}
class curl_tlssessioninfo is repr('CStruct') is export {
	has int32                         $.backend; # curl_sslbackend backend
	has Pointer                       $.internals; # void* internals
}
class curl_version_info_data is repr('CStruct') is export {
	has int32                         $.age; # CURLversion age
	has Str                           $.version; # const char* version
	has uint32                        $.version_num; # unsigned int version_num
	has Str                           $.host; # const char* host
	has int32                         $.features; # int features
	has Str                           $.ssl_version; # const char* ssl_version
	has long                          $.ssl_version_num; # long int ssl_version_num
	has Str                           $.libz_version; # const char* libz_version
	has Pointer[Str]                  $.protocols; # const const char** protocols
	has Str                           $.ares; # const char* ares
	has int32                         $.ares_num; # int ares_num
	has Str                           $.libidn; # const char* libidn
	has int32                         $.iconv_ver_num; # int iconv_ver_num
	has Str                           $.libssh_version; # const char* libssh_version
}

## Extras stuff

## Functions


# == /usr/include/curl/multi.h ==

#-From /usr/include/curl/multi.h:114
#/*
# * Name:    curl_multi_init()
# *
# * Desc:    inititalize multi-style curl usage
# *
# * Returns: a new CURLM handle to use in all 'curl_multi' functions.
# */
#CURL_EXTERN CURLM *curl_multi_init(void);
sub curl_multi_init is native(LIB) returns Pointer is export { * }

#-From /usr/include/curl/multi.h:124
#/*
# * Name:    curl_multi_add_handle()
# *
# * Desc:    add a standard curl handle to the multi stack
# *
# * Returns: CURLMcode type, general multi error code.
# */
#CURL_EXTERN CURLMcode curl_multi_add_handle(CURLM *multi_handle,
#                                            CURL *curl_handle);
sub curl_multi_add_handle(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                         ,Pointer                       $curl_handle # Typedef<CURL>->|void|*
                          ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:134
# /*
#  * Name:    curl_multi_remove_handle()
#  *
#  * Desc:    removes a curl handle from the multi stack again
#  *
#  * Returns: CURLMcode type, general multi error code.
#  */
#CURL_EXTERN CURLMcode curl_multi_remove_handle(CURLM *multi_handle,
#                                               CURL *curl_handle);
sub curl_multi_remove_handle(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                            ,Pointer                       $curl_handle # Typedef<CURL>->|void|*
                             ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:149
# /*
#  * Name:    curl_multi_fdset()
#  *
#  * Desc:    Ask curl for its fd_set sets. The app can use these to select() or
#  *          poll() on. We want curl_multi_perform() called as soon as one of
#  *          them are ready.
#  *
#  * Returns: CURLMcode type, general multi error code.
#  */
#CURL_EXTERN CURLMcode curl_multi_fdset(CURLM *multi_handle,
#                                       fd_set *read_fd_set,
#                                       fd_set *write_fd_set,
#                                       fd_set *exc_fd_set,
#                                       int *max_fd);
sub curl_multi_fdset(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                    ,Pointer               $read_fd_set # fd_set*
                    ,Pointer               $write_fd_set # fd_set*
                    ,Pointer               $exc_fd_set # fd_set*
                    ,Pointer[int32]                $max_fd # int*
                     ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:163
#/*
# * Name:     curl_multi_wait()
# *
# * Desc:     Poll on all fds within a CURLM set as well as any
# *           additional fds passed to the function.
# *
# * Returns:  CURLMcode type, general multi error code.
# */
#CURL_EXTERN CURLMcode curl_multi_wait(CURLM *multi_handle,
#                                      struct curl_waitfd extra_fds[],
#                                      unsigned int extra_nfds,
#                                      int timeout_ms,
#                                      int *ret);
sub curl_multi_wait(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                   ,Pointer[curl_waitfd]          $extra_fds # curl_waitfd*
                   ,uint32                        $extra_nfds # unsigned int
                   ,int32                         $timeout_ms # int
                   ,Pointer[int32]                $ret # int*
                    ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:182
# /*
#  * Name:    curl_multi_perform()
#  *
#  * Desc:    When the app thinks there's data available for curl it calls this
#  *          function to read/write whatever there is right now. This returns
#  *          as soon as the reads and writes are done. This function does not
#  *          require that there actually is data available for reading or that
#  *          data can be written, it can be called just in case. It returns
#  *          the number of handles that still transfer data in the second
#  *          argument's integer-pointer.
#  *
#  * Returns: CURLMcode type, general multi error code. *NOTE* that this only
#  *          returns errors etc regarding the whole multi stack. There might
#  *          still have occurred problems on invidual transfers even when this
#  *          returns OK.
#  */
#CURL_EXTERN CURLMcode curl_multi_perform(CURLM *multi_handle,
#                                         int *running_handles);
sub curl_multi_perform(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                      ,Pointer[int32]                $running_handles # int*
                       ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:194
# /*
#  * Name:    curl_multi_cleanup()
#  *
#  * Desc:    Cleans up and removes a whole multi stack. It does not free or
#  *          touch any individual easy handles in any way. We need to define
#  *          in what state those handles will be if this function is called
#  *          in the middle of a transfer.
#  *
#  * Returns: CURLMcode type, general multi error code.
#  */
#CURL_EXTERN CURLMcode curl_multi_cleanup(CURLM *multi_handle);
sub curl_multi_cleanup(Pointer $multi_handle # Typedef<CURLM>->|void|*
                       ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:225
#/*
# * Name:    curl_multi_info_read()
# *
# * Desc:    Ask the multi handle if there's any messages/informationals from
# *          the individual transfers. Messages include informationals such as
# *          error code from the transfer or just the fact that a transfer is
# *          completed. More details on these should be written down as well.
# *
# *          Repeated calls to this function will return a new struct each
# *          time, until a special "end of msgs" struct is returned as a signal
# *          that there is no more to get at this point.
# *
# *          The data the returned pointer points to will not survive calling
# *          curl_multi_cleanup().
# *
# *          The 'CURLMsg' struct is meant to be very simple and only contain
# *          very basic informations. If more involved information is wanted,
# *          we will provide the particular "transfer handle" in that struct
# *          and that should/could/would be used in subsequent
# *          curl_easy_getinfo() calls (or similar). The point being that we
# *          must never expose complex structs to applications, as then we'll
# *          undoubtably get backwards compatibility problems in the future.
# *
# * Returns: A pointer to a filled-in struct, or NULL if it failed or ran out
# *          of structs. It also writes the number of messages left in the
# *          queue (after this read) in the integer the second argument points
# *          to.
# */
#CURL_EXTERN CURLMsg *curl_multi_info_read(CURLM *multi_handle,
#                                          int *msgs_in_queue);
sub curl_multi_info_read(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                        ,Pointer[int32]                $msgs_in_queue # int*
                         ) is native(LIB) returns Pointer[CURLMsg] is export { * }

#-From /usr/include/curl/multi.h:236
#/*
# * Name:    curl_multi_strerror()
# *
# * Desc:    The curl_multi_strerror function may be used to turn a CURLMcode
# *          value into the equivalent human readable error string.  This is
# *          useful for printing meaningful error messages.
# *
# * Returns: A pointer to a zero-terminated error message.
# */
#CURL_EXTERN const char *curl_multi_strerror(CURLMcode);
sub curl_multi_strerror(int32  # CURLMcode
                        ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/multi.h:282
#CURL_EXTERN CURLMcode curl_multi_socket(CURLM *multi_handle, curl_socket_t s,
#                                        int *running_handles);
sub curl_multi_socket(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                     ,curl_socket_t                 $s # Typedef<curl_socket_t>->|int|
                     ,Pointer[int32]                $running_handles # int*
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:287
#CURL_EXTERN CURLMcode curl_multi_socket_action(CURLM *multi_handle,
#                                               curl_socket_t s,
#                                               int ev_bitmask,
#                                               int *running_handles);
sub curl_multi_socket_action(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                            ,curl_socket_t                 $s # Typedef<curl_socket_t>->|int|
                            ,int32                         $ev_bitmask # int
                            ,Pointer[int32]                $running_handles # int*
                             ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:290
#CURL_EXTERN CURLMcode curl_multi_socket_all(CURLM *multi_handle,
#                                            int *running_handles);
sub curl_multi_socket_all(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                         ,Pointer[int32]                $running_handles # int*
                          ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:309
#/*
# * Name:    curl_multi_timeout()
# *
# * Desc:    Returns the maximum number of milliseconds the app is allowed to
# *          wait before curl_multi_socket() or curl_multi_perform() must be
# *          called (to allow libcurl's timed events to take place).
# *
# * Returns: CURLM error code.
# */
#CURL_EXTERN CURLMcode curl_multi_timeout(CURLM *multi_handle,
#                                         long *milliseconds);
sub curl_multi_timeout(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                      ,Pointer[long]                 $milliseconds # long int*
                       ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:380
#/*
# * Name:    curl_multi_setopt()
# *
# * Desc:    Sets options for the multi handle.
# *
# * Returns: CURLM error code.
# */
#CURL_EXTERN CURLMcode curl_multi_setopt(CURLM *multi_handle,
#                                        CURLMoption option, ...);
sub curl_multi_setopt(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                     ,int32                         $option # CURLMoption
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/multi.h:393
#/*
# * Name:    curl_multi_assign()
# *
# * Desc:    This function sets an association in the multi handle between the
# *          given socket and a private pointer of the application. This is
# *          (only) useful for curl_multi_socket uses.
# *
# * Returns: CURLM error code.
# */
#CURL_EXTERN CURLMcode curl_multi_assign(CURLM *multi_handle,
#                                        curl_socket_t sockfd, void *sockp);
sub curl_multi_assign(Pointer                      $multi_handle # Typedef<CURLM>->|void|*
                     ,curl_socket_t                 $sockfd # Typedef<curl_socket_t>->|int|
                     ,Pointer                       $sockp # void*
                      ) is native(LIB) returns int32 is export { * }


# == /usr/include/curl/curl.h ==

#-From /usr/include/curl/curl.h:1705
#/* curl_strequal() and curl_strnequal() are subject for removal in a future
#   libcurl, see lib/README.curlx for details */
#CURL_EXTERN int (curl_strequal)(const char *s1, const char *s2);
sub curl_strequal(Str                           $s1 # const char*
                 ,Str                           $s2 # const char*
                  ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1706
#CURL_EXTERN int (curl_strnequal)(const char *s1, const char *s2, size_t n);
sub curl_strnequal(Str                           $s1 # const char*
                  ,Str                           $s2 # const char*
                  ,size_t                        $n # Typedef<size_t>->|long unsigned int|
                   ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1799
#/*
# * NAME curl_formadd()
# *
# * DESCRIPTION
# *
# * Pretty advanced function for building multi-part formposts. Each invoke
# * adds one part that together construct a full post. Then use
# * CURLOPT_HTTPPOST to send it off to libcurl.
# */
#CURL_EXTERN CURLFORMcode curl_formadd(struct curl_httppost **httppost,
#                                      struct curl_httppost **last_post,
#                                      ...);
sub curl_formadd(Pointer[Pointer[curl_httppost]]$httppost # curl_httppost**
                ,Pointer[Pointer[curl_httppost]]$last_post # curl_httppost**
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1823
#/*
# * NAME curl_formget()
# *
# * DESCRIPTION
# *
# * Serialize a curl_httppost struct built with curl_formadd().
# * Accepts a void pointer as second argument which will be passed to
# * the curl_formget_callback function.
# * Returns 0 on success.
# */
#CURL_EXTERN int curl_formget(struct curl_httppost *form, void *arg,
#                             curl_formget_callback append);
sub curl_formget(Pointer[curl_httppost]        $form # curl_httppost*
                ,Pointer                       $arg # void*
                ,&append (Pointer, Str, size_t --> size_t) # Typedef<curl_formget_callback>->|F:Typedef<size_t>->|long unsigned int| ( void*, const char*, Typedef<size_t>->|long unsigned int|)*|
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1831
#/*
# * NAME curl_formfree()
# *
# * DESCRIPTION
# *
# * Free a multipart formpost previously built with curl_formadd().
# */
#CURL_EXTERN void curl_formfree(struct curl_httppost *form);
sub curl_formfree(Pointer[curl_httppost] $form # curl_httppost*
                  ) is native(LIB)  is export { * }

#-From /usr/include/curl/curl.h:1841
#/*
# * NAME curl_getenv()
# *
# * DESCRIPTION
# *
# * Returns a malloc()'ed string that MUST be curl_free()ed after usage is
# * complete. DEPRECATED - see lib/README.curlx
# */
#CURL_EXTERN char *curl_getenv(const char *variable);
sub curl_getenv(Str $variable # const char*
                ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1850
#/*
# * NAME curl_version()
# *
# * DESCRIPTION
# *
# * Returns a static ascii string of the libcurl version.
# */
#CURL_EXTERN char *curl_version(void);
sub curl_version(
                 ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1863
#/*
# * NAME curl_easy_escape()
# *
# * DESCRIPTION
# *
# * Escapes URL strings (converts all letters consider illegal in URLs to their
# * %XX versions). This function returns a new allocated string or NULL if an
# * error occurred.
# */
#CURL_EXTERN char *curl_easy_escape(CURL *handle,
#                                   const char *string,
#                                   int length);
sub curl_easy_escape(Pointer                       $handle # Typedef<CURL>->|void|*
                    ,Str                           $string # const char*
                    ,int32                         $length # int
                     ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1867
#/* the previous version: */
#CURL_EXTERN char *curl_escape(const char *string,
#                              int length);
sub curl_escape(Str                           $string # const char*
               ,int32                         $length # int
                ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1884
#/*
# * NAME curl_easy_unescape()
# *
# * DESCRIPTION
# *
# * Unescapes URL encoding in strings (converts all %XX codes to their 8bit
# * versions). This function returns a new allocated string or NULL if an error
# * occurred.
# * Conversion Note: On non-ASCII platforms the ASCII %XX codes are
# * converted into the host encoding.
# */
#CURL_EXTERN char *curl_easy_unescape(CURL *handle,
#                                     const char *string,
#                                     int length,
#                                     int *outlength);
sub curl_easy_unescape(Pointer                       $handle # Typedef<CURL>->|void|*
                      ,Str                           $string # const char*
                      ,int32                         $length # int
                      ,Pointer[int32]                $outlength # int*
                       ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1888
#/* the previous version */
#CURL_EXTERN char *curl_unescape(const char *string,
#                                int length);
sub curl_unescape(Str                           $string # const char*
                 ,int32                         $length # int
                  ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:1898
#/*
# * NAME curl_free()
# *
# * DESCRIPTION
# *
# * Provided for de-allocation in the same translation unit that did the
# * allocation. Added in libcurl 7.10
# */
#CURL_EXTERN void curl_free(void *p);
sub curl_free(Pointer $p # void*
              ) is native(LIB)  is export { * }

#-From /usr/include/curl/curl.h:1910
#/*
# * NAME curl_global_init()
# *
# * DESCRIPTION
# *
# * curl_global_init() should be invoked exactly once for each application that
# * uses libcurl and before any call of other libcurl functions.
# *
# * This function is not thread-safe!
# */
#CURL_EXTERN CURLcode curl_global_init(long flags);
sub curl_global_init(long $flags # long int
                     ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1930
#/*
# * NAME curl_global_init_mem()
# *
# * DESCRIPTION
# *
# * curl_global_init() or curl_global_init_mem() should be invoked exactly once
# * for each application that uses libcurl.  This function can be used to
# * initialize libcurl and set user defined memory management callback
# * functions.  Users can implement memory management routines to check for
# * memory leaks, check for mis-use of the curl library etc.  User registered
# * callback routines with be invoked by this library instead of the system
# * memory management routines like malloc, free etc.
# */
#CURL_EXTERN CURLcode curl_global_init_mem(long flags,
#                                          curl_malloc_callback m,
#                                          curl_free_callback f,
#                                          curl_realloc_callback r,
#                                          curl_strdup_callback s,
#                                          curl_calloc_callback c);
sub curl_global_init_mem(long                          $flags # long int
                        ,&m (size_t --> Pointer) # Typedef<curl_malloc_callback>->|F:void* ( Typedef<size_t>->|long unsigned int|)*|
                        ,&f (Pointer) # Typedef<curl_free_callback>->|F:void ( void*)*|
                        ,&r (Pointer, size_t --> Pointer) # Typedef<curl_realloc_callback>->|F:void* ( void*, Typedef<size_t>->|long unsigned int|)*|
                        ,&s (Str --> Str) # Typedef<curl_strdup_callback>->|F:char* ( const char*)*|
                        ,&c (size_t, size_t --> Pointer) # Typedef<curl_calloc_callback>->|F:void* ( Typedef<size_t>->|long unsigned int|, Typedef<size_t>->|long unsigned int|)*|
                         ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:1940
#/*
# * NAME curl_global_cleanup()
# *
# * DESCRIPTION
# *
# * curl_global_cleanup() should be invoked exactly once for each application
# * that uses libcurl
# */
#CURL_EXTERN void curl_global_cleanup(void);
sub curl_global_cleanup(
                        ) is native(LIB)  is export { * }

#-From /usr/include/curl/curl.h:1957
#/*
# * NAME curl_slist_append()
# *
# * DESCRIPTION
# *
# * Appends a string to a linked list. If no list exists, it will be created
# * first. Returns the new list, after appending.
# */
#CURL_EXTERN struct curl_slist *curl_slist_append(struct curl_slist *,
#                                                 const char *);
sub curl_slist_append(Pointer[curl_slist]            # curl_slist*
                     ,Str                            # const char*
                      ) is native(LIB) returns Pointer[curl_slist] is export { * }

#-From /usr/include/curl/curl.h:1966
#/*
# * NAME curl_slist_free_all()
# *
# * DESCRIPTION
# *
# * free a previously built curl_slist.
# */
#CURL_EXTERN void curl_slist_free_all(struct curl_slist *);
sub curl_slist_free_all(Pointer[curl_slist]  # curl_slist*
                        ) is native(LIB)  is export { * }

#-From /usr/include/curl/curl.h:1977
#/*
# * NAME curl_getdate()
# *
# * DESCRIPTION
# *
# * Returns the time, in seconds since 1 Jan 1970 of the time string given in
# * the first argument. The time argument in the second parameter is unused
# * and should be set to NULL.
# */
#CURL_EXTERN time_t curl_getdate(const char *p, const time_t *unused);
sub curl_getdate(Str                           $p # const char*
                ,Pointer[int32]             $unused # const Typedef<time_t>->|Typedef<int32>->|long int||*
                 ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:2149
#CURL_EXTERN CURLSH *curl_share_init(void);
sub curl_share_init(
                    ) is native(LIB) returns Pointer is export { * }

#-From /usr/include/curl/curl.h:2150
#CURL_EXTERN CURLSHcode curl_share_setopt(CURLSH *, CURLSHoption option, ...);
sub curl_share_setopt(Pointer                      # Typedef<CURLSH>->|void|*
                     ,int32                         $option # CURLSHoption
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:2151
#CURL_EXTERN CURLSHcode curl_share_cleanup(CURLSH *);
sub curl_share_cleanup(Pointer  # Typedef<CURLSH>->|void|*
                       ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/curl.h:2226
# /*
# * NAME curl_version_info()
# *
# * DESCRIPTION
# *
# * This function returns a pointer to a static copy of the version info
# * struct. See above.
# */
#CURL_EXTERN curl_version_info_data *curl_version_info(CURLversion);
sub curl_version_info(int32  # CURLversion
                      ) is native(LIB) returns Pointer[curl_version_info_data] is export { * }

#-From /usr/include/curl/curl.h:2237
#/*
# * NAME curl_easy_strerror()
# *
# * DESCRIPTION
# *
# * The curl_easy_strerror function may be used to turn a CURLcode value
# * into the equivalent human readable error string.  This is useful
# * for printing meaningful error messages.
# */
#CURL_EXTERN const char *curl_easy_strerror(CURLcode);
sub curl_easy_strerror(int32  # CURLcode
                       ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:2248
#/*
# * NAME curl_share_strerror()
# *
# * DESCRIPTION
# *
# * The curl_share_strerror function may be used to turn a CURLSHcode value
# * into the equivalent human readable error string.  This is useful
# * for printing meaningful error messages.
# */
#CURL_EXTERN const char *curl_share_strerror(CURLSHcode);
sub curl_share_strerror(int32  # CURLSHcode
                        ) is native(LIB) returns Str is export { * }

#-From /usr/include/curl/curl.h:2259
#/*
# * NAME curl_easy_pause()
# *
# * DESCRIPTION
# *
# * The curl_easy_pause function pauses or unpauses transfers. Select the new
# * state by setting the bitmask, use the convenience defines below.
# *
# */
#CURL_EXTERN CURLcode curl_easy_pause(CURL *handle, int bitmask);
sub curl_easy_pause(Pointer                       $handle # Typedef<CURL>->|void|*
                   ,int32                         $bitmask # int
                    ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/easy.h:28
#CURL_EXTERN CURL *curl_easy_init(void);
sub curl_easy_init(
                   ) is native(LIB) returns Pointer is export { * }

#-From /usr/include/curl/easy.h:29
#CURL_EXTERN CURLcode curl_easy_setopt(CURL *curl, CURLoption option, ...);
# TODO Waiting for multiple signatures
sub curl_easy_setopt_str(Pointer                       $curl # Typedef<CURL>->|void|*
                    ,int32                         $option # CURLoption
                    ,Str                           $value
                     ) is native(LIB) is symbol('curl_easy_setopt')
                     returns int32 { * }

# TODO Waiting for multiple signatures
sub curl_easy_setopt_int32(Pointer                       $curl # Typedef<CURL>->|void|*
                   ,int32                          $option # CURLoption
                   ,int32                          $value
                   ) is native(LIB) is symbol('curl_easy_setopt')
                   returns int32 { * }

sub curl_easy_setopt_pointer(Pointer                       $curl # Typedef<CURL>->|void|*
                   ,int32                          $option # CURLoption
                   ,Pointer                        $value
                   ) is native(LIB) is symbol('curl_easy_setopt')
                   returns int32 { * }

# TODO Waiting for multiple signatures
my sub curl_easy_setopt_cb(OpaquePointer, uint32, &cb (Pointer $ptr, uint32 $size, uint32 $nmemb, OpaquePointer $stream --> uint32))
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

  return curl_easy_setopt_cb($point, CURLOPT_WRITEFUNCTION, &callback);
}

multi sub curl_easy_setopt(Pointer $curl, Int $option, Str $value) is export {
  return curl_easy_setopt_str($curl, $option, $value);
}

multi sub curl_easy_setopt(Pointer $curl, Int $option, Int $value) is export {
  return curl_easy_setopt_int32($curl, $option, $value);
}

multi sub curl_easy_setopt(Pointer $curl, Int $option, Pointer $value) is export {
  return curl_easy_setopt_pointer($curl, $option, $value);
}

#-From /usr/include/curl/easy.h:30
#CURL_EXTERN CURLcode curl_easy_perform(CURL *curl);
sub curl_easy_perform(Pointer $curl # Typedef<CURL>->|void|*
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/easy.h:31
#CURL_EXTERN void curl_easy_cleanup(CURL *curl);
sub curl_easy_cleanup(Pointer $curl # Typedef<CURL>->|void|*
                      ) is native(LIB)  is export { * }

#-From /usr/include/curl/easy.h:46
#/*
# * NAME curl_easy_getinfo()
# *
# * DESCRIPTION
# *
# * Request internal information from the curl session with this function.  The
# * third argument MUST be a pointer to a long, a pointer to a char * or a
# * pointer to a double (as the documentation describes elsewhere).  The data
# * pointed to will be filled in accordingly and can be relied upon only if the
# * function returns CURLE_OK.  This function is intended to get used *AFTER* a
# * performed transfer, all results from this function are undefined until the
# * transfer is completed.
# */
#CURL_EXTERN CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ...);
sub curl_easy_getinfo(Pointer                       $curl # Typedef<CURL>->|void|*
                     ,int32                         $info # CURLINFO
                      ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/easy.h:61
#/*
# * NAME curl_easy_duphandle()
# *
# * DESCRIPTION
# *
# * Creates a new curl session handle with the same options set for the handle
# * passed in. Duplicating a handle could only be a matter of cloning data and
# * options, internal state info and things like persistent connections cannot
# * be transferred. It is useful in multithreaded applications when you can run
# * curl_easy_duphandle() for each new thread to avoid a series of identical
# * curl_easy_setopt() invokes in every thread.
# */
#CURL_EXTERN CURL* curl_easy_duphandle(CURL *curl);
sub curl_easy_duphandle(Pointer $curl # Typedef<CURL>->|void|*
                        ) is native(LIB) returns Pointer is export { * }

#-From /usr/include/curl/easy.h:74
#/*
# * NAME curl_easy_reset()
# *
# * DESCRIPTION
# *
# * Re-initializes a CURL handle to the default values. This puts back the
# * handle to the same state as it was in when it was just created.
# *
# * It does keep: live connections, the Session ID cache, the DNS cache and the
# * cookies.
# */
#CURL_EXTERN void curl_easy_reset(CURL *curl);
sub curl_easy_reset(Pointer $curl # Typedef<CURL>->|void|*
                    ) is native(LIB)  is export { * }

#-From /usr/include/curl/easy.h:85
#/*
# * NAME curl_easy_recv()
# *
# * DESCRIPTION
# *
# * Receives data from the connected socket. Use after successful
# * curl_easy_perform() with CURLOPT_CONNECT_ONLY option.
# */
#CURL_EXTERN CURLcode curl_easy_recv(CURL *curl, void *buffer, size_t buflen,
#                                    size_t *n);
sub curl_easy_recv(Pointer                       $curl # Typedef<CURL>->|void|*
                  ,Pointer                       $buffer # void*
                  ,size_t                        $buflen # Typedef<size_t>->|long unsigned int|
                  ,Pointer[size_t]               $n # Typedef<size_t>->|long unsigned int|*
                   ) is native(LIB) returns int32 is export { * }

#-From /usr/include/curl/easy.h:96
#/*
# * NAME curl_easy_send()
# *
# * DESCRIPTION
# *
# * Sends data over the connected socket. Use after successful
# * curl_easy_perform() with CURLOPT_CONNECT_ONLY option.
# */
#CURL_EXTERN CURLcode curl_easy_send(CURL *curl, const void *buffer,
#                                    size_t buflen, size_t *n);
sub curl_easy_send(Pointer                       $curl # Typedef<CURL>->|void|*
                  ,Pointer                       $buffer # const void*
                  ,size_t                        $buflen # Typedef<size_t>->|long unsigned int|
                  ,Pointer[size_t]               $n # Typedef<size_t>->|long unsigned int|*
                   ) is native(LIB) returns int32 is export { * }
