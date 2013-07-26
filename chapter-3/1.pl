#!/usr/bin/perl

use strict;
use warnings;

my @list = grep {
	my $size = -s $_;
	$_ if $size < 1000;
	} @ARGV;


@list = map {"    " . $_ . "\n"} @list;

foreach (@list){
	print "$_";
}

__END__