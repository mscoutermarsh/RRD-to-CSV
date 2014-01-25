# USAGE: perl convert.pl testinput.xml > output.csv
# Grabs all of the daily average data in the XML file, converts it to CSV.
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
  # this is ugly... But grabs the average for each day.
  if($inAverage){
    if($line =~ m/(00:00:00 UTC)/){ # You may need to change this to your timezone
      if($line =~ m/(\d{4}-\d{2}-\d{2})/){
        $date = $1;
        if($line =~ m/(\d.\d*e\+\d+)<\/v><v>(\d.\d*e\+\d+)/){
            print "$date,$1,$2\n";
          }
        }
      }
  }
 }
