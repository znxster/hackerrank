while(<STDIN>) {
    if(/(\d{1,2})(?::\d\d:\d\d)\s*(AM|PM)/) {
        my $hh = $1;
        $hh -= 12 if ($2 eq 'AM' && $hh == 12);
        $hh += 12 if ($2 eq 'PM' && $hh != 12);
        $hh = sprintf "%02d", $hh;
        s/(\d{1,2})(:\d\d:\d\d)\s*(?:AM|PM)/$hh$2/;
    }
    print;
}
