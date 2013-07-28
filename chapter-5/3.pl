#!/usr/bin/perl

use strict;
use warnings;

my %total_bytes;

while(<>){
	next if /\A#/;
	my($source, $dest, $bytes) = split;
	$total_bytes{$source} -> {$dest} += $bytes;

}

#my @keys  = keys = %total_bytes;

open FILE , ">>", "coconet_.dat" or die "Can't open file to write : $!";

for my $source (sort keys %total_bytes) {
	print FILE "$source\n";
	for my $destination (sort { $total_bytes{$source}->{$b} <=> $total_bytes{$source}->{$a} } keys %{ $total_bytes{$source} }) {
		print FILE "  $destination : $total_bytes{$source}{$destination}\n";
	}
}

__END__