$inputFile = "<".$ARGV[0];

print "date, val1, val2\n";

$inAverage = 0;

# open xml file... read Line by Line
open(MYINPUTFILE, $inputFile);
while(<MYINPUTFILE>){
	my($line) = $_;
	chomp($line);
	if($line =~ m/AVERAGE/){
		$inAverage = 1;
	}elsif($line =~ m/MAX/){
		$inAverage = 0;
	}

	if($inAverage){
		if($line =~ m/(00:00:00 UTC)/){
			if($line =~ m/(\d{4}-\d{2}-\d{2})/){
				$date = $1;
				if($line =~ m/(\d.\d*e\+\d+)<\/v><v>(\d.\d*e\+\d+)/){
		  			print "$date,$1,$2\n";
		  		}
	  		}
	  	}
  }
 }