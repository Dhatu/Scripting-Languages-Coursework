use strict;
use warnings;

print "Enter x value for max function: ";
my $x = <STDIN>;
print "Enter y value for max function: ";
my $y = <STDIN>;
#print "Enter ac value for max function: ";
my $ac = 1;

print powerof2ints($x, $y, $ac);

sub powerof2ints{
 my $x = shift;
 my $y = shift;
 my $ac = shift; 
 
if( ($y % 2) != 0){
        return powerof2ints($x*$x, ($y - 1)/2, $ac * $x)
    }else{
        return powerof2ints($x*$x, $y/2, $ac)
	}
}
#tailrecursive