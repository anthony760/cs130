#!/usr/bin/perl

# Create a program that would take in test scores (1 to 100) and calculate the
# median and average. Each operation above should be a separate subroutine and
# should return the value associated with the subroutine. So there should be at
# least 2 subrountines (median, average)

use strict;
use warnings;
use POSIX;

# Warn if user provided no test scores as arguments.
if( @ARGV < 1 ) {
  print "WARNING: You did not enter any test scores as arguments.\n";
# Warn if user only entered one test score; show single test score as result.
} elsif( @ARGV == 1 ) {
  print "WARNING: You only entered one test score.\nBoth the average and median are: $ARGV[0]\n";
} else {

# Sort test scores from lowest to highest.
  my @test_scores = sort { $a <=> $b } @ARGV;

  printf("The median is: %.1f\n",  &median(@test_scores));
  printf("The average is: %.1f\n",  &average(@test_scores));
}

#### Subfunctions ####

sub median {

  my (@numbers) = @_;
# Get initial position of median.
  my $median_position = floor(@numbers / 2);

# If total of numbers provided is an odd number, return middle number.
  if ( @numbers % 2 ) {
    return $numbers[$median_position];
# If total number is even, find the two numbers in the middle and calculate and return the value between them.
  } else {
    return ($numbers[$median_position] + $numbers[$median_position - 1]) / 2;
  }
}

sub average {

  my (@numbers) = @_;
  my $total = 0;
  my $count = 0;

  foreach( @numbers ) {
    $total += $_;
    $count++;
  }

  return $total / $count;
}
