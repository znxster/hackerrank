sub add {
    ($x,$y) = @_;
    return $x+$y;
}

$n = <STDIN>;
$arr_temp = <STDIN>;
@arr = split / /,$arr_temp;
$a = 0;
for($i=0; $i<$n; $i++) {
    $a = add($a,$arr[$i]);
}
print $a;
