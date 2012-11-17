Net::Curl
=========

This enables you to use libcurl native API in Perl 6. The plan is support the libcurl Easy interface first and run all the libcurl website examples.

libcurl is a free and easy-to-use client-side URL transfer library.
It supports DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS,
LDAP, LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet
and TFTP. libcurl supports SSL certificates, HTTP POST, HTTP PUT,
FTP uploading, HTTP form based upload, proxies, cookies,
user+password authentication (Basic, Digest, NTLM, Negotiate, Kerberos), 
file transfer resume, http proxy tunneling and more!

Installation
============

* Using panda (a module management tool bundled with Rakudo Star):

	panda install Net::Curl

* Using ufo and make:

    git clone git://github.com/azawawi/perl6-net-curl.git
    cd perl6-net-curl
    ufo                      # Create Makefile
    make
    make test
    make install

## Testing

To run tests:

    prove -e perl6

## Author

Ahmad M. Zawawi, azawawi on #perl6, https://github.com/azawawi/

## License

Artistic License 2.0
