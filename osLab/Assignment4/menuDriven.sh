#!/bin/bash

while true
do
  echo "Menu:"
  echo "1. Sort records in reverse order of Roll number"
  echo "2. Replace lower case letters with upper case letters"
  echo "3. Find records with unique name"
  echo "4. Display 2nd and 3rd lines"
  echo "5. Quit"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      sort -t '|' -k 2 -r Students.dat > Sorted.dat
      echo "Sorted records:"
      cat Sorted.dat
      ;;
    2)
      tr '[:lower:]' '[:upper:]' < Sorted.dat > Sorted_upper.dat
      echo "Records with upper case letters:"
      cat Sorted_upper.dat
      ;;
    3)
      uniq -f 1 Sorted.dat >> Students.dat
      echo "Records with unique name:"
      cat Students.dat
      ;;
    4)
      echo "2nd and 3rd line:"
      cat Students.dat | head -3 | tail -2  
	  ;;
    5)
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done
