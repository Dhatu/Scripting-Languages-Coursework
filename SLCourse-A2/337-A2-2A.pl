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
  my $result = $x;
  my $i = 1;
  while ($i < $y) {
    $result *= $x;
    $i++;
  }
  if ($x == 0) {
        return 0; 
    }
if ($y == 0) {
        return 1; 
    }
  return $result;
}