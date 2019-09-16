use strict;
use warnings;


my @referencelist = [
    {
	102 => "Intro to Web Programming",
	125 => "Calculus A", 
	132 => "Chemistry II"
    },
    {
	218 => "Fundamentals of Info Tech" , 
	214 => "Computer Science II", 
	215 => "Foundations of Comp Sci"
    },

    {
    301 => "History of Computing", 
	373 => "Analysis of Algorithms", 
	337 => "Scripting Languages"
    },
  ];

print "\nEnter the desired coursenumber:\n";
my $coursenumber = <STDIN>; 
print "Enter the desired yearnumber:\n";
my $yearnumber = <STDIN>; 

my $str = "";
$str = hashreference(\@referencelist, $coursenumber, $yearnumber-1);
print $str;

sub hashreference {

	my @referencelist = $_[0];
	my $coursenumber = $_[1];
	my $yearnumber = $_[2];
	
		if (exists $referencelist[$yearnumber]{$coursenumber}) {
			return $referencelist[$yearnumber]{$coursenumber};
		}else {
			return "Unknown course!";
			}
	
}	
