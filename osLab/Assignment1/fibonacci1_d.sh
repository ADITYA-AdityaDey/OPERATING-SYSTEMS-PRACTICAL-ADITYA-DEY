#!/bin/bash

# Get user input
read -p "Enter the number of terms: " n

# Check if input is a valid integer
if ! [[ $n =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid input. Please enter a whole number."
  exit 1
fi

# Initialize variables
a=0
b=1

# Print Fibonacci series
echo "Fibonacci series up to $n terms:"
for (( i=1; i<=n; i++ )); do
  echo -n "$a "
  c=$((a + b))
  a=$b
  b=$c
done
echo
