$s = <STDIN>;
chomp $s;

@parts = $s =~ /[A-Z]/g;
print scalar @parts + 1;
