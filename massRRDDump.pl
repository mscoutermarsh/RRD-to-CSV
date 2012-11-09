# USAGE: perl massRRDDump.pl
# Runs rrdtool dump on each .rrd file in the current directory.

@files = <*>;
 foreach $file (@files) {
 	if($file =~ m/\.rrd/){
 		@filename = split('\.', $file);
 		$name = $filename[0];
 		print "dumping $file...\n";
   		`rrdtool dump $file >$name.xml`;
	}
}
print "done";