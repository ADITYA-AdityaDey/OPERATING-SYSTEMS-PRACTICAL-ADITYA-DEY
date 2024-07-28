#!/bin/bash

# Get user input
read -p "Enter a number: " num

# Check if input is a valid integer
if ! [[ $num =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid input. Please enter a whole number."
  exit 1
fi

# Calculate sum of digits
sum=0
for (( i=0; i<${#num}; i++ )); do
  digit=${num:$i:1}
  sum=$((sum + digit))
done

# Print result
echo "Sum of digits: $sum"
