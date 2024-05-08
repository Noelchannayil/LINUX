#!/bin/bash

# Define "Out1"
Out1() {
    echo "Outer function #1"
    
    # Define "In"
    In() {
        echo "Inner function #1"
    }

    # Call function "In"
    In
}

# Define "Out2"
Out2() {
    echo "Outer function #2"
    
    # Define "In"
    In() {
        echo "Inner function #2"
    }

    # Call function "In"
    In
}

# Call the outer and nested functions
Out1
Out2
In

# Call function "In" again
In
