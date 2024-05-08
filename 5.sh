#!/bin/bash

filename="noel.txt"

if [ ! -f "$filename" ]; then
    echo "File not found!"
    exit 1
fi

# Read the contents of file
file_contents=($(<"$filename"))

# Display the contents 
echo "Contents of the file $filename:"
for item in "${file_contents[@]}"; do
    echo "$item"
done

