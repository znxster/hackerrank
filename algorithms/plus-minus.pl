$n = <STDIN>;
$ar = <STDIN>;
@a = split / /,$ar;

$pos = $neg = $zer = 0;

for($i=0;$i<$n;$i++) {
    $pos++ if($a[$i] > 0);
    $neg++ if($a[$i] < 0);
    $zer++ if($a[$i] == 0);
}
print $pos/$n."\n";
print $neg/$n."\n";
print $zer/$n."\n";
