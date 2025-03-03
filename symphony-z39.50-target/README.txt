MRB: Tue 26-Sep-2017

Filename: README.txt

Purpose: README.txt file that describes this music score querying and parsing
process using the Symphony Z39.50 target.

Description: This directory contains files that are used in the process to query
the SirsiDynix Symphony Z39.50 target server to retrieve the bibliographic
records for MacEwan University Library print music scores.

The YAZ toolkit (https://www.indexdata.com/resources/software/yaz/) yaz-client
(https://software.indexdata.com/yaz/doc/yaz-client.html), a Z39.50/SRU client,
is used to query the UAL Symphony Z39.50 target.

To run the command to produce an output file of MARC 21 binary format records,
type this command at the command prompt:

    yaz-client -f input.txt -m output.mrc -t utf-8

You can later use the MarcEdit program (https://marcedit.reeset.net/) to
convert the MARC 21 records to MARC mnemonic text records.

And for another way to produce an output file of MARC text records, type this
command at the command prompt:

    yaz-client -f input.txt -t utf-8 | tee output.txt

The files in this directory are the following:

* input.txt
    - This file is the input command file for the yaz-client to connect and
      query to the UAL Z39.50 target and "Unicorn" database.
* marc-records-for-print-music-scores-notes.txt
    - This file contains notes about the MARC fields and Z39.50 Use attributes
      that would be useful to use in retrieving the MARC records describing
      print music scores.
* output.mrc
    - This file is the output file of MARC 21 binary format records produced
      from the yaz-client query operation using the command to append the
      MARC21 records to a file.
* output.mrk
    - This file is the resulting output file of MARC mnemonic text records
      produced when MarcEdit is used to convert the output.mrc MARC 21 records
      to MARC mnemonic text records.
* output.txt
    - This file is the resulting output file of MARC text records produced from
      the yaz-client query operation by redirecting the terminal output to a
      file to produce a file of MARC text records.
* README.txt
    - This README.txt file that enumerates the files in this directory.
