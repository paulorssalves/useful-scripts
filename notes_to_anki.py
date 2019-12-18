#!/usr/bin/python3
# notes_to_anki.py: takes a text file with loads of words and creates a csv file optimized to be fed unto Anki 
"""
ATTENTION: Supposed to be used with one-line translations. A script for multi-line definitions is still to be created. 

to be used in the following way:

    python notes_to_anki.py input_file output_file 

it assumes the files are displaced in the following way:
    item one - translation1;
    item two - translation2;

and then creates a csv file which displays information in the following manner:
    ---------------------------
    | item one | translation1 |
    ---------------------------
    | item two | translation2 |
    ---------------------------

(imagine this thing above is a pair of two-row columns from a spreadsheet)

"""

import csv, sys

def adapt(file, output):
    f = open(file)

    stripped = [line.strip(";") for line in f] # transforms the whole text into a list of phrases separated by ';' 
    split_l = [line.split('-') for line in stripped] # splits every phrase into a list separated by '-'
    nl = split_l 

    # removes new lines and semicolons from the phrases
    for index in range(len(nl)):
        for phrase_index in range(len(nl[index])):
            if phrase_index == 1:
                nl[index][phrase_index] = nl[index][phrase_index].replace("\n", '')
                nl[index][phrase_index] = nl[index][phrase_index].replace(';', '')
    
    # writes to .csv file
    with open(output, "w+") as out:
        writer = csv.writer(out)
        writer.writerow(("from", "to"))
        writer.writerows(nl)

if __name__ == '__main__':
    adapt(str(sys.argv[1]), str(sys.argv[2]))


