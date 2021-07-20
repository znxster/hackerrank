sub birthdayCakeCandles {
    my ($num_of, @candles) = @_;
    my @counts;
    
    for(my $i = 0; $i < $num_of; $i++) {
        my $cur = $candles[$i];
        $counts[$cur] = 0 if(not defined $counts[$cur]);
        $counts[$cur]++;
    }
    
    my $best = 0;
    my $csize = 0;
    for(my $i = 1; $i < scalar @counts; $i++) {
        if($counts[$i] > $best) {
            $csize = $i;
            $best = $counts[$i];
        }
    }
    
    return $counts[$csize];
}

$n = <STDIN>; chomp $n;
$ar_temp = <STDIN>; @ar = split / /,$ar_temp; chomp @ar;
$result = birthdayCakeCandles($n, @ar);
print "$result\n";
