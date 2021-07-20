#!/usr/bin/perl

$n = <STDIN>;
chomp $n;

$arr_temp = <STDIN>;
@arr = split / /,$arr_temp;
chomp @arr;

while($n > 0) {
    print $arr[--$n]." ";
}
