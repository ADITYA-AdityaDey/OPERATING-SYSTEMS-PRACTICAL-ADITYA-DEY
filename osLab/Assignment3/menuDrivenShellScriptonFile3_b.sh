#!/bin/bash

# Create a data file if it doesn't exist
if [ ! -f personal.dat ]; then
    touch personal.dat
fi

while true
do
    clear
    echo "Menu:"
    echo "1. Accept personal details and password"
    echo "2. Display personal details"
    echo "3. Exit from menu"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1)
            echo -n "Enter your name: "
            read name
            echo -n "Enter your email: "
            read email
            echo -n "Enter your password: "
            read -s password
            echo
            echo "$name|$email|$password" >> personal.dat
            ;;
        2)
            echo -n "Enter your password: "
            read -s password
            echo
            if grep -q "^.*|$password$" personal.dat; then
                echo "Personal details:"
                grep "^.*|$password$" personal.dat | cut -d'|' -f1,2
            else
                echo "Invalid password"
            fi
            ;;
        3)
            exit
            ;;
        *)
            echo "Invalid choice. Please choose a valid option."
            ;;
    esac

    echo -n "Press Enter to continue..."
    read
done
