#!/bin/bash

# Replace this line with one or more shell commands
# You may write to intermediate text files on disk if necessary

# cut and paste columns for comparing
cut -d ',' -f 3,5 > col35.txt
cut -d ',' -f 1 < col35.txt | awk '{print $1}' > col3.txt
cut -d ',' -f 2 < col35.txt > col5.txt
paste -d ' ' col3.txt col5.txt > col35.txt
# compare and add lines
awk '{for(i=2;i<=NF;i++) 
	{ 
		if($1 == $i) 
		{ 
			print $1 > "lines.txt"; 
			break;} 
		} 
	}' col35.txt
wc -l lines.txt | tr ' ' '\n' | head -n 1


