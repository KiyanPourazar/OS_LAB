#!/bin/bash

read -p "Enter the temperature: " temp

if (( temp < 0 )); then
    echo "The weather is freezing"
elif (( temp >= 0 && temp <= 30 )); then
    echo "The weather is cool"
else
    echo "The weather is hot"
fi
