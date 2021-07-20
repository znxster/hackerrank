sub add {
    ($x,$y) = @_;
    return $x+$y;
}

$n = <STDIN>; # doesn't matter
$arr_temp = <STDIN>;
@arr = split / /, $arr_temp;
chomp @arr;

$total = 0;
foreach $a (@arr) {
    $total = add($a, $total);
}
print $total;
