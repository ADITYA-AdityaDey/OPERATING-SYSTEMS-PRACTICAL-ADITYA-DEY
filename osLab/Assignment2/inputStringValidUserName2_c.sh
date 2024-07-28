#!/bin/bash

echo "Enter a username: "
read -r username

if [[ $username =~ ^[a-zA-Z][a-zA-Z0-9_]{2,31}$ ]]; then
  echo "Valid username"
else
  echo "Invalid username"
fi
