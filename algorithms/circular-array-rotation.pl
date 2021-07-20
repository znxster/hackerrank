$tmp = <STDIN>; chomp $tmp;
($n, $k, $q) = split / /, $tmp;

$k = $k % $n;

$tmp = <STDIN>; chomp $tmp;
@ar = split/ /, $tmp;

while($q-- > 0) {
    $m = <STDIN>; chomp $m;
    $j = $m - $k;
    if($j < 0) {
        print $ar[$n+$j]."\n";
    }
    else {
        print $ar[$j]."\n";
    }
}
