use strict;
use warnings;

print "Enter txt you want to open: ";
my $inputfile = <STDIN>;
open my $test, $inputfile or die "File not Found";

#init variables
my @existingstack = [];
my @readablestack = [];
my @writablestack = [];
my @executablestack = [];
my @plaintextstack = [];

   open my $existing, '<', 'efiles.txt';
   open my $readable, '<', 'rfiles.txt';
   open my $writeable, '<', 'wfiles.txt';
   open my $executable, '<', 'xfiles.txt';
   open my $plaintext, '<', 'tfiles.txt';

while (my $filename = <$test>) {
	chomp($filename);
	if (-e $filename){
	
		print $existing $filename;
		push(@existingstack, $filename);

		
		if (-r $filename){
		
		print $readable $filename;
		push(@readablestack, $filename);	

		}
		if (-w $filename){
		
		print $writeable $filename;
		push(@writablestack, $filename);
		}
		if (-x $filename){
		
		print $executable $filename;
		push(@executablestack, $filename);
		
		}
		if (-T $filename){
		
		print $plaintext $filename;
		push(@plaintextstack, $filename);	

		}
	
	}
}
   close $existing;
   close $readable;
   close $writeable;
   close $executable;
   close $plaintext;

my $existingSize = @existingstack;
my $readableSize = @readablestack;
my $writeSize = @writablestack;
my $executSize = @executablestack;
my $plaintextSize = @plaintextstack;

   print ($existingSize, " existing files: " , $existingstack[0], "\n");
   print ($readableSize, " readable files:" , $readablestack[0], "\n");
   print ($writeSize, " writable files: " , $writablestack[0], "\n");
   print ($executSize, " executable files: " , $executablestack[0], "\n");
   print ($plaintextSize, " plain text files: ", $plaintextstack[0], "\n");

	close $inputfile;