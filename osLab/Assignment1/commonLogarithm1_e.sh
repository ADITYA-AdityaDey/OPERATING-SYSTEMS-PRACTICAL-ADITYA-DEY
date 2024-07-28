#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <integer>"
  exit 1
fi

# Get the input value
n=$1

# Check if the input is a positive integer
if ! [[ $n =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Input must be a positive integer."
  exit 1
fi

# Calculate the Common Logarithm using the logarithm function
log_value=$(echo "scale=2; l($n)/l(10)" | bc -l)

# Print the result
echo "The Common Logarithm of $n is $(printf "%.2f" $log_value)"
