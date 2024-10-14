#!/bin/bash

read -p "Enter the temperature in Celsius: " temp_celsius

if ! [[ "$temp_celsius" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter a valid number for the temperature."
    exit 1
fi

temp_fahrenheit=$(echo "scale=2; ($temp_celsius * 9/5) + 32" | bc)

if (( $(echo "$temp_celsius < 0" | bc -l) )); then
    echo "The weather is freezing"
elif (( $(echo "$temp_celsius >= 0" | bc -l) && $(echo "$temp_celsius <= 30" | bc -l) )); then
    echo "The weather is cool"
else
    echo "The weather is hot"
fi

echo "The temperature in Fahrenheit is: $temp_fahrenheit °F"
