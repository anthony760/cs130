#!/usr/bin/perl

# Write a program that asks the user for the height and length of a rectangle. If you user enters a number less
# than 0 for either height or length report that the area of the rectangle is zero.  If you can compute the
# area display the area to the user. 

use strict;
use warnings;

my $height = 0;
my $length = 0;

# Get the height of the rectangle:
$height = prompt_for_number("Please enter the height of your rectangle: ");
# Get the length of the rectangle:
$length = prompt_for_number("Please enter the length of your rectangle: ");

# Print results:
print "\nHeight: " . $height;
print "\nLength: " . $length;
print "\nArea of Rectangle = ". ($height * $length) . "\n";

#### Subroutines ####

sub prompt_for_number {
  my ($prompt) = @_;
  my $num = 0;

# Get user input:
  do {
    print $prompt;
    chomp($num = <STDIN>);

# Make sure number greater than zero was entered.
    if ( !($num =~ /^\d+$/) || $num == 0 ) {
      print "\nWARNING: You must enter a number greater than 0. You entered: $num\n\n";
      $num = 0;
    }

# Loop again if height is less than zero.
  }while( $num <= 0);

  return $num;
}
