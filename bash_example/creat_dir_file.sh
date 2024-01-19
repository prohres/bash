#!/bin/bash

# Set variables for arguments
full_path="$1"
file_numb="$2"

# Check if arguments and path exist 
if [[ "$full_path" == "" ]] || [[ "$file_numb" == "" ]]; then
	echo "Usage: $0 full_path file_number"; exit 1;
elif [[ ! -d "$full_path" ]]; then 
	mkdir -p "$full_path" && cd $full_path
else cd $full_path
fi

# Create a specified number of files and write to the file the sequence number the appropriate number of times
for((i=1; i<=$file_numb; i++)); do
	for((j=1; j<=$i; j++)); do
		echo -n "$i" >> file$i
	done
	echo "" >> file$i
done

# Find the largest file within this folder
find $full_path -type f -printf '%s %p\n' | sort -nr | head -1

