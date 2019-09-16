use strict;
use warnings;


print "Enter x value for max function: ";
my $x = <STDIN>;
print "Enter y value for max function: ";
my $y = <STDIN>;

print powerof2ints($x, $y);

   sub powerof2ints {
        my $x = shift;
        my $y = shift;
		if ($x == 0) {
        return 0; 
		}
		if ($y == 0) {
			return 1; 
		}
    my $temp = powerof2ints($x, $y/2); 
		if ($y%2 == 0) {
			return $temp*$temp; 
		}else {
			return $x*$temp*$temp; 
		}
}
    