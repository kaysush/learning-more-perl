#!/usr/bin/perl

use strict;
use warnings;

sub change_howell_location {
	my $array = shift @_;
	foreach my $root (@$array){
		my $name = $root -> {'name'};
		if( $name =~ /[hH]woell/ ){
			$root -> {'location'} = "The Island Country club";
		}
	}
}

sub print_crew_location {
	my $array = shift @_;
	foreach my $root (@$array){
		my $name = $root -> {'name'};
		my $location = $root -> {'location'};
		print "$name at $location\n";
	}
}

my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
my @mr_howell = qw(blue_shirt hat jacket preserver sunscreen);
my @mrs_howell = qw(sunscreen water_bottle slide_rule batteries radio);

my %gilligan_info = (
	name => "Gilligan",
	items => \@gilligan,
	location => "The Island"
);

my %skipper_info = (
	name => "Skipper",
	items => \@skipper,
	location => "The Island"
);

my %professor_info = (
	name => "Professor",
	items => \@professor,
	location => "The Island"
);

my %mr_howell_info = (
	name => "Mr. Howell",
	items => \@mr_howell,
	location => "The Island"
);

my %mrs_howell_info = (
	name => "Mrs. Howell",
	items => \@mrs_howell,
	location => "The Island"
);

my @crew = (
		\%skipper_info,
		\%professor_info,
		\%gilligan_info,
		\%mrs_howell_info,
		\%mrs_howell_info
	);

change_howell_location(\@crew);
print_crew_location(\@crew);



__END__