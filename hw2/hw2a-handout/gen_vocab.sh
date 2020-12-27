#!/bin/bash

# Replace this line with a sequence of shell commands connected with Unix pipes ("|")

# replace spaces with new line to get list of words
# then sort all words and get unique works
# remove empty lines

tr ' ' '\n' | sort | uniq | sed -r '/^\s*$/d' 
