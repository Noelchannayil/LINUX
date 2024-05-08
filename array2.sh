#!/bin/bash

array1=("apple" "banana" "orange")

array2=("grape" "kiwi" "melon")

# Concatenate arrays 
array3=("${array1[@]}" "${array2[@]}")

echo "Array 1:"
echo "${array1[@]}"
echo "Array 2:"
echo "${array2[@]}"
echo "Array 3 (concatenated):"
echo "${array3[@]}"
