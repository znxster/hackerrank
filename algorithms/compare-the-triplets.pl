sub mcmp {
    ($a,$b) = @_;
    return 1 if($a > $b);
    return 0 if($a == $b);
    return -1;
}

$a0 = <STDIN>; @a1 = split / /, $a0;
$b0 = <STDIN>; @b1 = split / /, $b0;

$alice = $bob = 0;
for($i=0;$i<3;$i++) {
    $res = mcmp($a1[$i],$b1[$i]);
    if($res == 1) { $alice++; }
    elsif($res == -1) { $bob++; }
}
print "$alice $bob";
