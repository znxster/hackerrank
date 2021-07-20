$Regex_Pattern = 'https?:\/\/([[:alnum:]-]+[.][[:alnum:]-.]+)';

while(<STDIN>) {
    s/ww[w2]\.//g;
    push @res, /$Regex_Pattern/g;
}

@uniq = do {
    %seen;
    grep { !$seen{$_}++ } sort @res;
};


$tail="";
foreach $dom (@uniq) {
    print "$tail$dom";
    $tail = ";" if($tail eq "");
}
