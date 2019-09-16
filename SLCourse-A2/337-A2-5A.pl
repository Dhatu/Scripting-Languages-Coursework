use strict;
use warnings;

print "Enter first strand of DNA: ";
my $firstseq = <STDIN>;
print "Enter second strand of DNA: ";
my $secondseq = <STDIN>;

print dna_checker($firstseq, $secondseq);

sub dna_checker {
	my $firstseq = shift;
	my $secondseq = shift;
	my $i = 0;
	
	
	if ( length($firstseq) != length($secondseq)){
		return "False";
	}
	while ( $i < length($firstseq)){
		my $char1 = substr( $firstseq, $i , 1 );
		my $char2 = substr( $secondseq, $i , 1 );
		
		if ($char1 eq "A" && $char2 ne "T"){
			return "False";
		}
		if ($char1 eq "T" && $char2 ne "A"){
			return "False";
		}
		if ($char1 eq "C" && $char2 ne "G"){
			return "False";
		}
		if ($char1 eq "G" && $char2 ne "C"){
			return "False";
		}
		$i++;
	}
	return "True";
}
