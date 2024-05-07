#!/bin/perl -w

use strict;
use feature 'say';

sub Single_Number{
	my @nums = sort {$a <=> $b} @_;

	for (my $i = 0; $i <= $#nums; $i += 2){
		return $nums[$i] if $nums[$i] != ($nums[$i+1] // $nums[0] - 1)
	}
}

say(Single_Number(2, 2, 1)); # 1
say(Single_Number(4, 2, 1, 1, 2)); # 4
say(Single_Number(1)); # 1
