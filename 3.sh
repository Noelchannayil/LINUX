#!/bin/bash

# Define an array
linux_flavors=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch" "Mint" "OpenSUSE" "Kali")

# Prompt the user to enter the index
echo -n "Enter the index of the Linux OS flavor you want to remove: "
read index

if [ "$index" -lt 0 ] || [ "$index" -ge "${#linux_flavors[@]}" ]; then
    echo "Error: Index out of range or invalid."
    exit 1
fi

# Remove the array element
unset 'linux_flavors[index]'

# Display updated array
echo "Updated Linux OS flavors:"
for flavor in "${linux_flavors[@]}"; do
    echo "$flavor"
done
