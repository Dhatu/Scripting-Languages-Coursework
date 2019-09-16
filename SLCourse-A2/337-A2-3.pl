use strict;
use warnings;

print "Enter an integer: \n";
my $n=<STDIN>;
my $d=0;
my @uniquenums = [];
my @uniqueprims = [];
my $c;

	foreach my $j (@uniquenums) {
		if ( !@uniquenums) {
			push(@uniquenums, $n);
			last;
		}elsif ($j == $n){
			last;
		}else {
			push(@uniquenums, $n);
			last;
		}
	}

while ($n != int("-1")) {
if($n==2){
	print "Prime number \n";
}else{
		for($c=2;$c<=$n-1;$c++){
			if( $n%$c==0){
			$d=1;
			last;
			}
		}
}
if($d==1){
	my @factors = Factor_It($n);
	print @factors;
	foreach my $j (@uniquenums) {
		if ( !@uniquenums) {
			push(@uniquenums, $n);
			last;
		}elsif ($j == $n){
			last;
		}else {
			push(@uniquenums, $n);
			last;
		}
	}

	print "Enter an integer: \n";
	$n=<STDIN>;
	$d=0;

	sub Factor_It {
		$n = $_[0];
		my @factors;
		for ( 2 .. int $n / 2 ) {        
			push @factors, $_ unless $n % $_;
		}
		return (1, @factors, $n);
	}
}else {
	foreach my $m (@uniquenums) {
		if ( !@uniquenums) {
			push(@uniquenums, $n);
			push(@uniqueprims, $n);
			last;
		}elsif ($m == $n){
			last;
		}else {
			push(@uniquenums, $n);
			push(@uniqueprims, $n);
			last;
		}
	}
		print "Prime number.\n";
		print "Enter an integer: \n";
		$n=<STDIN>;
		$d=0;
}
if($n<2){
	if($n==int("-1")){
		print 'unique numbers:';
		print @uniquenums;
		print ', unique primes:';
		print @uniqueprims;
		}
	else {
		print "Input must be an integer greater than 1\n";
	}
}	
}



