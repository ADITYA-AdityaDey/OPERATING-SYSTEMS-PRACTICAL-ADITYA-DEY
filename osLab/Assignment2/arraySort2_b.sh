#!/bin/bash

# Function to perform Bubble Sort
bubble_sort() {
  local -a arr=("$@")
  local n=${#arr[@]}
  local i
  local j
  local temp

  for ((i = 0; i < n - 1; i++)); do
    for ((j = 0; j < n - i - 1; j++)); do
      if ((arr[j] > arr[j + 1])); then
        temp=${arr[j]}
        arr[j]=${arr[j + 1]}
        arr[j + 1]=$temp
      fi
    done
  done

  echo "${arr[@]}"
}

# Get the array from user input
echo "Enter the array elements (space-separated): "
read -r -a arr

# Print the original array
echo "Original array: ${arr[@]}"

# Sort the array
sorted_arr=($(bubble_sort "${arr[@]}"))

# Print the sorted array
echo "Sorted array: ${sorted_arr[@]}"
