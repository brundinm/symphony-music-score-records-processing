MRB: Tue 26-Sep-2017

Filename: README.txt

Purpose: README.txt file that describes this music score querying and parsing
process using the VSIP and EDS APIs.

Description: This directory contains two Bash shell script files that are used
to obtain the bibliographic records for MacEwan Library print music scores, as
well as an output results file of print music scores titles called
music-scores-titles.txt. 

The get-music-scores.sh script is a proof of concept to retrieve 260 music
score bibliographic records, with the returned records being in JSON format.
The devlibapi1.macewan.ca VSIP API server is queried, and that custom API in
turn queries the EBSCO Discovery Services (EDS) API, which in turn queries the
SirsiDynix Symphony ILS.  The get-music-scores.sh script uses a FOR loop to
make 13 queries, with 20 records per result set, for a total of 260 records in
13 result set files.

The parse-music-scores-titles.sh script uses the C utility jq
(https://jqlang.org/) and a FOR loop to parse the JSON output files to print
out the MARC 245 title field string to an output file results.txt.  The
results.txt file is then sorted alphabetically and printed out to a file called
music-scores-titles.txt.
