@files = <*>;
 foreach $file (@files) {
 	if($file =~ m/\.rrd/){
 		@filename = split('\.', $file);
 		$name = $filename[0];
   		`rrdtool dump $file >$name.xml`;
	}
}