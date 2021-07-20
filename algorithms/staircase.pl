$n = <STDIN>;

for($line=$n;$line > 0;$line--) {
    for($i=0;$i<$n;$i++) {
        if($i < $line - 1) {
            print " ";
        } else {
            print "#";
        }
    }
    print "\n";
}
