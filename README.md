# Net::Curl [![Build Status](https://travis-ci.org/azawawi/perl6-net-curl.svg?branch=master)](https://travis-ci.org/azawawi/perl6-net-curl)

Net::Curl provides a Perl 6 interface to libcurl.
The plan is support the libcurl Easy interface first
and run all the libcurl website examples
and then support an object-oriented interface.

libcurl is a free and easy-to-use client-side URL transfer library.
It supports DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS,
LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet
and TFTP. libcurl supports SSL certificates, HTTP POST, HTTP PUT,
FTP uploading, HTTP form based upload, proxies, cookies,
user+password authentication (Basic, Digest, NTLM, Negotiate, Kerberos), 
file transfer resume, http proxy tunneling and more!

## Installation

* Since Net::Curl uses libcurl, libcurl.so must be found in /usr/lib.
To install libcurl on Debian for example, please use the following command:

```
	sudo apt-get install libcurl3-dev
```

* Using panda (a module management tool bundled with Rakudo Star):

```
$ panda install Net::Curl
```

## Testing

To run tests:

```
$ prove -e "perl6 -Ilib"
```

## Author

Ahmad M. Zawawi, azawawi on #perl6, https://github.com/azawawi/

## License

Artistic License 2.0
