#!/usr/bin/perl

use strict;
use warnings;
use Business::ISBN;

my $isbn = Business::ISBN->new($ARGV[0]);
my $group_code = $isbn->group_code;
my $publisher_code = $isbn->publisher_code;

print "Group Code : $group_code Publisher Code : $publisher_code\n";

__END__