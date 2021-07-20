$V = <STDIN>; chomp $V; # search value
$n = <STDIN>; chomp $n; # size of array
$tmp = <STDIN>; chomp $tmp; # array
@ar = split / /, $tmp;

$i = 0;
while($i < $n) {
    if($ar[$i] == $V) {
        print $i;
        last;
    }
    $i++;
}
