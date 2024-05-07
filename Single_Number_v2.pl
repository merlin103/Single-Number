#!/bin/perl -w

use strict;
use feature 'say';

sub Single_Number{
	my @nums = @_;
	my %seen;

	$seen{$_} += 1 foreach @nums;
	
	foreach my $key (keys %seen){
		return $key if $seen{$key} == 1
	}
}

say(Single_Number(2, 2, 1)); # 1
say(Single_Number(4, 2, 1, 1, 2)); # 4
say(Single_Number(1)); # 1
