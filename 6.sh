#!/bin/bash

declare -A beatles=(
    [singer]="Arijit Singh"
    [bassist]="Atif Aslam"
    [drummer]="Sonu Nigam"
    [guitarist]="Anuv Jain"
)

echo "Original array:"
for role in "${!beatles[@]}"; do
    echo "$role: ${beatles[$role]}"
done

# Delete guitarist 
unset beatles[guitarist]

echo -e "\nUpdated array (guitarist removed):"
for role in "${!beatles[@]}"; do
    echo "$role: ${beatles[$role]}"
done
