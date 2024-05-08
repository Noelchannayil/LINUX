#!/bin/bash

# Define a recursive function 
factorial() {
    if [ "$1" -eq 0 ] || [ "$1" -eq 1 ]; then
        echo 1
    else
        local sub_factorial=$(factorial $(( $1 - 1 )))
        echo $(( $1 * $sub_factorial ))
    fi
}

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    echo "Calculate the factorial of a number using recursion."
    exit 1
fi

number=$1
result=$(factorial $number)
echo "Factorial of $number is: $result"
