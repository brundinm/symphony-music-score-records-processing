#/bin/bash

# MRB: Tue 26-Sep-2017

# Purpose: Shell script to parse MUL music scores titles out of the JSON files;
# using the C utility jq (https://jqlang.org/), a command line JSON parser
# - note: this script is just a proof of concept -- decided to use a Z39.50
# query and subsequent parsing operation scripts, rather than query the VSIP
# API / EDS API and then parse the result set, to retrieve MUL music scores
# bibliographic records

# FOR loop to print out the Title field information from each JSON file to a
# text file
for i in *.json; do
    jq -r ".Results[].Description.Title" $i >> results.txt;
done

# Sort the results file, and print out to a new file
cat results.txt | sort > music-scores-titles.txt

# Delete old results file
rm results.txt

# Replace the quotation entity reference "&quot;" with """
sed -i "s/&quot;/\"/g" music-scores-titles.txt
