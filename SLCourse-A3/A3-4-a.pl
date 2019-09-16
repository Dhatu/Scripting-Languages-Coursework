
my $filename = $ARGV[0];

open(my $fh ,$filename) || die "Cannot open '$filename' $!";

my @inputarray;
while(my $line = <$fh>) {
		chomp $line;
		push (@inputarray, $line);
		$line =~ s/<p>//g ;
		
	$line =~ s/<\/p>/<br><br>/g;
		
	$line =~ s/<span>|<\/span>//g ;
		print "$line\n";
}

close($fh)



