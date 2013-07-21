#!/usr/bin/perl

use strict;
use warnings;
use File::Spec;
use Cwd qw(getcwd);

my $cwd = getcwd;
my $dir = $ARGV[0] // $cwd;
chdir $dir or die "Error changing the directory : $!";
my @files = glob "*";
foreach (@files) {
	print File::Spec->catfile($cwd , $_),"\n";
}

__END__