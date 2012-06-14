@files = <*>;
 foreach $file (@files) {
 	if($file =~ m/\.xml/){
 		@filename = split('\.', $file);
 		$name = $filename[0];
   		`perl convert.pl $file >$name.csv`;
	}
}