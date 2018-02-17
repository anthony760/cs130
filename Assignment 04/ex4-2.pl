#!/usr/bin/perl

# Write a program that prints the numbers from 1 to 100. But for multiples
# of three print “Fizz” instead of the number and for the multiples of five
# print “Buzz”. For numbers which are multiples of both three and five print
# “FizzBuzz”.

use strict;
use warnings;

for( 1..100 ) {
  if( $_ % 3 == 0 && $_ % 5 == 0) { print "FizzBuzz\n" }
  elsif( $_ % 3 == 0 ) { print "Fizz\n"; }
  elsif( $_ % 5 == 0 ) { print "Buzz\n"; }
  else { print "$_\n"; }
}
