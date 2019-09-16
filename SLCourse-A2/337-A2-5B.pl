use strict;
use warnings;

print "How many string do you want in your list?";
my $listnum = <STDIN>;
my $i = 0;
my $j = 0;
my $n = 0;
my $t = 0;

my $stringinput = "";
my @stringlist = [];
my @stringlength = [];
my @numref = [];
my @finalarray = [];
my $finalindexref;
my $char1;
my $num;
my $asciisum = 0;


while ($i < $listnum){
	print ("Enter ", $i, "th"," string: ");
	my $stringinput = <STDIN>;
	push(@stringlist,$stringinput);
	$i++;
}

foreach my $j (@stringlist) {
										
	push(@stringlength, length($j));
	while ( $n < length($j)){
	
		$char1 = substr( $j, $n , 1 );
		$num = ord($char1);
		$asciisum = $asciisum + $num;
		print "$asciisum";
		$n++;
	}
	print "$asciisum";
	push(@numref,$asciisum);
	$asciisum = 0;
	$n = 0;
}


$i = 0;
while ($i < $listnum){
	$finalindexref = ($numref[$i])/($stringlength[$i]);
	push(@finalarray, $finalindexref);
	$i++;
}

@finalarray = sort { $a <=> $b } @finalarray;

foreach my $v (@finalarray) {
	while ($t <= $listnum){
		if ($v = $numref[$t]){
			$v = $stringlist[$t];
		}
	}
	$t = 0;
}

print "@finalarray\n";


