#/bin/bash

# MRB: Tue 26-Sep-2017

# Purpose: Shell script to retrieve MUL music scores bibliographic records
# - "-g" flag is to address issue with square brackets (i.e., "[" and "]")
# in the query 
# - "-k" flag turns off cURL's verification of the SSL certificate
# - "-s" flag make silent
# - using the devlibapi1 server API, which in turn references the EDS API,
# which in turn integrates with the SirsiDynix Symphony ILS catalog
# - the query uses the search term "scores", and then limits the query using
# the EDS facet filter of source type being "Music Scores" and location
# library being "MacEwan University - City Centre"
# - returned records are in JSON format
# - note: this script is just a proof of concept -- decided to use a Z39.50
# query and subsequent parsing operation scripts, rather than query the VSIP
# API / EDS API and then parse the result set, to retrieve MUL music scores
# bibliographic records

# FOR loop to retrieve 260 records, or 13 pages, the maximum number 
# returned from a search in the result set; possibly the "numrec" parameter
# can be used to increase the maximum number of records returned in an API
# query
for i in $(seq -w 1 13); do
    curl -g -k -s  "https://devlibapi1.macewan.ca/api/search/1.0/search?query=scores&ff[]=SourceType%3AMusic+Scores&ff[]=LocationLibrary%3AMacewan+University+-+City+Centre&page=$i" > music-scores-page-$i.json;
done
