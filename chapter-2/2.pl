#!/usr/bin/perl

use strict;
use warnings;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014002}};

foreach (keys %modules){
	print "$_ => ",Module::CoreList->first_release($_),"\n";
}

__END__