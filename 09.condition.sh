#!/bin/bash
# This script demonstrates the use of conditional statements in bash.
echo "Enter a number:"
read number

if [ $(($number % 2)) -eq 0 ]; then # -eq means "equal to"
    echo "The number $number is even."
else
    echo "The number $number is odd."
fi # its used to close the if statement
    