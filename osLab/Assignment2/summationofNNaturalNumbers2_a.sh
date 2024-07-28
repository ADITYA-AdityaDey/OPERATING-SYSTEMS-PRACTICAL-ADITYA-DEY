#!/bin/bash

# Initialize the sum to 0
sum=0

# Iterate over the command-line arguments
for num in "$@"; do
  # Check if the argument is a positive integer
  if [[ $num =~ ^[1-9][0-9]*$ ]]; then
    # Add the number to the sum
    ((sum += num))
  else
    echo "Error: Argument '$num' is not a positive integer."
    exit 1
  fi
done

# Print the result
echo "The sum of the numbers is $sum"
