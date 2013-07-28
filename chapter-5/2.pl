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

for my $source (sort keys %total_bytes) {
	for my $destination (sort { $total_bytes{$source}->{$b} <=> $total_bytes{$source}->{$a}  } keys %{ $total_bytes{$source} }) {
		print "$source => $destination:",
		" $total_bytes{$source}{$destination} bytes\n";
	}
	print "\n";
}

__END__