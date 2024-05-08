#!/bin/bash

echo "Enter a list of strings:"
read -r input_string

reversed_string=$(awk '{ for(i=NF;i>=1;i--) printf "%s ",$i; printf "\n" }' <<< "$input_string")

echo "Reversed string: $reversed_string"

