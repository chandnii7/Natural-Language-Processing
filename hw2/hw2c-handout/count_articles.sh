#!/bin/bash

# Replace this line with one or more shell commands
# You may write to intermediate text files on disk if necessary

ls test_*.txt | for file in $(ls test_*.txt)
do
#The second field should be the number of lines in the file that include "the" as a word.
numthe=$(cat $file | grep -c -E '\b[Tt]he\b')
#The third field should be the number of lines in the file that include "a" as a word.
numa=$(cat $file | grep -c -E '\b[Aa]\b')
#The fourth field should be the number of lines in the file that include "an" as a word.
numan=$(cat $file | grep -c -E '\b[Aa]n\b')
echo "$file,$numthe,$numa,$numan"
done

