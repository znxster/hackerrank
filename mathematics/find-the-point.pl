#!/usr/bin/perl

use strict;
use warnings;

#
# Complete the 'findPoint' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER px
#  2. INTEGER py
#  3. INTEGER qx
#  4. INTEGER qy
#

sub findPoint {
    my ($px, $py, $qx, $qy) = @_;
    my $rx = (2 * $qx) - $px;
    my $ry = (2 * $qy) - $py;
    return ($rx, $ry)
}

open(my $fptr, '>', $ENV{'OUTPUT_PATH'});
my $n = ltrim(rtrim(my $n_temp = <STDIN>));

for (my $n_itr = 0; $n_itr < $n; $n_itr++) {
    my @first_multiple_input = split /\s+/, rtrim(my $first_multiple_input_temp = <STDIN>);
    my $px = $first_multiple_input[0];
    my $py = $first_multiple_input[1];
    my $qx = $first_multiple_input[2];
    my $qy = $first_multiple_input[3];
    my @result = findPoint $px, $py, $qx, $qy;
    print $fptr join " ", @result;
    print $fptr "\n";
}

close $fptr;

sub ltrim {
    my $str = shift;
    $str =~ s/^\s+//;
    return $str;
}

sub rtrim {
    my $str = shift;
    $str =~ s/\s+$//;
    return $str;
}
