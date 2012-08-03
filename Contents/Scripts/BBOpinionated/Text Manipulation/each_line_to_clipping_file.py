#!/usr/bin/env python

# A simple script that takes each line of the currently open (and saved!) document
# and outputs a file for each line, named with the first matching group of the name_grep
# regex
#
# It saves its output to a folder named "output" on the desktop
#
# Not really meant for general consumption, but as a tool that gets modified with every new
# time you have to do this.
#
# WD-rpw 07-31-2012

import fileinput
import re, os

OUTPUT_DIRECTORY = os.path.expanduser("~/Desktop/output")


name_grep = re.compile( r"(.+?)\(" )  # the grep used to derive the file name (group 1 is used for the name)
# this particular regex was meant to parse lines of function declarations and use the name of the function as the file name
# Like so:
#
# somefunction(paramaters)

if not os.path.exists(OUTPUT_DIRECTORY):
    os.mkdir(OUTPUT_DIRECTORY)

for line in fileinput.input(  [ os.environ.get("BB_DOC_PATH") ]  ):
    res = name_grep.search(line)

    if res == None:
        continue

    filename = res.group(1)

    with open( os.path.join(OUTPUT_DIRECTORY, filename), 'w' ) as f:
        f.write( line )

print "all done!"
