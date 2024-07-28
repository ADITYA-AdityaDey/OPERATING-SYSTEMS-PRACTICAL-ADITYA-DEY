#!/bin/bash

read -p "Enter a number: " usernumber
fact=1
for ((i=1; i<=usernumber; i++)); do
  fact=$((fact * i))
done
echo "The factorial of $usernumber is $fact"
