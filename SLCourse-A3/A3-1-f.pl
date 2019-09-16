use strict;
use warnings;

my $regex = ($ARGV[0]);

my $param = 1;

while($param){
print "Enter an string: \n";
my $inputstring=<STDIN>;

if($inputstring =~ m/$regex/){
        print "Matched:$`< $& > $'\n";
    }
    else {
        print "no match \n";
    }

if ($inputstring = $SIG{'INT'}){
	exit;
}

}




