RRD-to-CSV
==========

Quick and dirty Perl scripts to convert RRD data to CSV.

Useful if you need to get some RRD data into excel for analysis.

Must have RRDtool installed.

massRRDDump.pl
--------------
USAGE: perl massRRDDump.pl

Runs rrdtool dump on each .rrd file in the current directory.

massXMLConvert.pl
--------------
USAGE: perl massXMLConvert.pl

Uses convert.pl to convert each XML file in the current directory to .csv

convert.pl
--------------
USAGE: perl convert.pl

Grabs all of the daily average data, converts to CSV.

USAGE: perl convert.pl testinput.xml > output.csv