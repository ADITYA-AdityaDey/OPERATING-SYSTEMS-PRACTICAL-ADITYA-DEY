#!/bin/bash

while true
do
     
    echo "Menu:"
    echo "1. Show the permissions of a file or directory"
    echo "2. Show the number of files and directories under current directory separately"
    echo "3. Show the last modification time of a file in current directory"
    echo "4. Exit from menu"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1)
            echo -n "Enter the file or directory name: "
            read filename
            ls -ld $filename | cut -c1-10
            ;;
        2)
            echo "Number of files: `ls -l | grep ^- | wc -l`"
            echo "Number of directories: `ls -l | grep ^d | wc -l`"
            ;;
        3)
            echo -n "Enter the file name: "
            read filename
            ls -ltr | grep $filename | cut -c36-50
            ;;
        4)
            exit
            ;;
        *)
            echo "Invalid choice. Please choose a valid option."
            ;;
    esac

    echo -n "Press Enter to continue..."
    read
done
