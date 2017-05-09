#!/usr/bin/env perl6
use v6;

# TODO Implement new API

use lib 'lib';
use Net::Curl::Easy;

given my $curl = Net::Curl::Easy.new {
    .option('CURLOPT_URL', 'http://http://example.com/');
    .perform;

    # Ask for the content-type
    my $content-type = .get-info('CURLINFO_CONTENT_TYPE');
    printf("We received Content-Type: %s\n", $content-type);

    LEAVE {
      # Always cleanup on lexical scope exit
      .cleanup if $_;
    }
}
