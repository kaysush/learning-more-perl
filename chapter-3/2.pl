#!/usr/bin/perl

use strict;
use warnings;

my $dir = $ARGV[0] // "\/home\/kaysush";
chdir $dir or die "Can't change the directory : $!";

while(my $match = <STDIN>){
	chomp($match);
	 if ($match =~ /\A\s*\Z/){
		print "Good Bye... exiting.\n";
		last;
	} else {
		
		my @files = glob ".* *";
		eval {
			@files = grep {/$match/} @files;
		};
		if ($@) {
			warn "Error in pattern : $@\n";
		} else {
			print "@files\n";
		}
		
			
	}
}

__END__