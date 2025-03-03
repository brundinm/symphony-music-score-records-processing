*** symphony-music-score-records-processing repository ***

MRB: Tue 26-Sep-2017

Purpose: This repository contains scripts and commands to retrieve print music
score bibliographic records.

Description: This repository contains two different approaches to retrieving
bibliographic records for print music scores from the UAL Symphony library
catalog.  MacEwan University Library has an extensive collection of print music
scores, and retrieving title and other bibliographic information for these items
would be useful in developing a finding aid and guide for students to help them
in accessing relevant music scores from the collection.

The two different approaches developed to retrieve music score bibliographic
information are performing a Z39.50 query of the Symphony catalog to retrieve
MARC bibliographic records, and performing a VSIP API query to retrieve catalog
records in JSON format.  The first approach is the one that was adopted, and
the second approach is sketched out as a proof of concept.

The directories in this repository are the following:

* symphony-z39.50-target
    - This directory contains files and notes for performing a Z39.50 protocol
      query of the UAL Symphony Z39.50 server to retrieve MARC bibliographic
      records for MacEwan Library print music scores.
* vsip-eds-api
    - This directory contains files and notes for performing a proof-of-concept
      query of the Library's VSIP API server, which in turn queries the EDS API,
      which queries the Symphony ILS to retrieve JSON format catalog records for
      MacEwan Library print music scores.
