use strict;
use warnings;

@refarray = grep{$_ % 2 != 0} split /:/, "1:3:4:5:7:8:9"; 
@refarray = sort{int($a) <=> int($b)} @refarray;
my $finaloutput = join (" ", @refarray);
print "The result is: $finaloutput \n";

#print join " # ", grep{$_ % 3 == 0} split / /, "1 3 4 5 7 8 9"; 

#grep is a method of parsing a structure/variable to a specified condition in brackets
#splits every whitespace within the string to be substring of every segment before/after the split calls 
