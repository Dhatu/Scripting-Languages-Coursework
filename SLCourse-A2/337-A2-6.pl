use strict;
use warnings;

print "Enter txt you want to open: ";
my $filename = <STDIN>;
open boi, "<$filename"
  or die "Could not open file '$filename' $!";
 
# use a hash
my %numstates = {};
my $statecount = 0;
my $recordsum = 0;
my $ref;
while (my $row = <boi>) {
  chomp $row;

  my $state = substr $row ,- 8, -6;
  if (exists ($numstates{$state})){
		$ref = $numstates{$state};
		$numstates{$state} = $ref + 1;
		$recordsum++;
	} else {
		$numstates{$state} = 1;
		$statecount++;
		$recordsum++;
	}
}

print ("There are " , $statecount , " separate states in the database.");
foreach (sort keys %numstates) {
    print "$_ : $numstates{$_}\n";
  }
print ("Processed " ,$recordsum ," records successfully."); 