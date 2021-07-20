#!/usr/bin/perl
$s = <STDIN>; chomp $s;
$s =~ s/\s*//g;
my @f = uniq(split //, lc($s));
print "not " if(scalar @f != 26);
print "pangram";
sub uniq { %seen; grep !$seen{$_}++, @_; }
