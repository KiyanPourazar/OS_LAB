#!/bin/bash

read -p "Enter a number: " number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi

reversed_number=$(echo "$number" | rev)

echo "The reversed number is: $reversed_number"
