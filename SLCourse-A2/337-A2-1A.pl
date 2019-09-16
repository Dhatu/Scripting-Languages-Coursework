!usr/bin/perl
use strict;
use warnings;

#perl -le "print map{('a'..'z')[rand 26]} 1..12" 

#it prints out a instance of a 8 random (rand 26) characters traveral (map) 
#of any letter ranging from a to z ('a'..'z')

print map{('a'..'z','A'..'Z',0..9,'!','?','-',';',':','#','$','%')[rand 69]} 1..12








