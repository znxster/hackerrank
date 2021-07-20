#!/usr/bin/perl

$arr_i = 0;
@arr = ();
while($arr_i < 6){
   my $arr_temp = <STDIN>;
   my @arr_t = split / /,$arr_temp;
   chomp @arr_t;
   push @arr,\@arr_t;
   $arr_i++;
}

my $i, $j;
my $max = -999999;
for($i = 0; $i < 4; $i++) {
    for($j = 0; $j < 4; $j++) {
        my $c =
            $arr[$i][$j] + $arr[$i][$j+1] + $arr[$i][$j+2] +
                           $arr[$i+1][$j+1] +
            $arr[$i+2][$j] + $arr[$i+2][$j+1] + $arr[$i+2][$j+2];
        $max = $c if($c > $max);
    }
}

print "$max\n";
