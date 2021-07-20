#!/usr/bin/perl

use strict;
use warnings;

# Complete the 'maximumDraws' function below.
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.

sub maximumDraws {
    my ($draws) = @_;
    return $draws + 1;
}

open(my $fptr, '>', $ENV{'OUTPUT_PATH'});

my $t = ltrim(rtrim(my $t_temp = <STDIN>));

for (my $t_itr = 0; $t_itr < $t; $t_itr++) {
    my $n = ltrim(rtrim(my $n_temp = <STDIN>));
    my $result = maximumDraws $n;
    print $fptr "$result\n";
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
