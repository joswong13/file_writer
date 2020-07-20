#!/bin/bash

#reads user input for output file
echo -e "Enter a name for the output file."
read fileName

#finds all the files, then prints each file name into a text file
find . -type f -print0 | 
    while IFS= read -r -d '' line; do
        if [[ "$line" != "./file_writer.sh" ]];
        then
            echo "$line"
            echo "$line" >> "$fileName".txt
        fi
    done

echo "Done!"