@files = <*>;
 foreach $file (@files) {
 	if($file =~ m/\.xml/){
 		@filename = split('\.', $file);
 		$name = $filename[0];
 		print "converting $file...\n";
   		`perl convert.pl $file >$name.csv`;
	}
}
print "\ndone";