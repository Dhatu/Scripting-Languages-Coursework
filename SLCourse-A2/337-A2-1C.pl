use List::Util "reduce";

sub useofreduce {
        my @array = shift;
        my @array2 = shift;
        my @array3 = shift;
		my @odd = map { $_ % 2 ? $_ : () } @array;
		my @even = grep { $_ % 2 == 0 } @array;
		my @neweven;
		
		foreach (@odd) {
			print $_ + "+";
		}
		foreach (@even){
			print $_ + "/2" + "+";
			my @neweven.push($_/2);
			
		}
		
		@finalprint = (@odd, @even);
		
		
		}

		}
	   
