#!/bin/bash

# Get the number of rows for the pyramid from the user
read -p "Enter the number of rows for the pyramid: " num_rows

# Outer loop for each row
for ((i = 1; i <= num_rows; i++)); do
    # Inner loop for spaces before the stars
    for ((j = i; j < num_rows; j++)); do
        echo -n " "
    done

    # Inner loop for printing stars
    for ((k = 1; k <= i; k++)); do
        echo -n "* "
    done

    # Move to the next line after each row
    echo
done
