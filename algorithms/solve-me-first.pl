sub solveMeFirst {
    ($x,$y) = @_;
    return $x + $y;
}

$choice1 = <STDIN>;
$choice2 = <STDIN>;
$result = solveMeFirst($choice1, $choice2);
print $result;
