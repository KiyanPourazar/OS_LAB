#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter an operator (+, -, *, /): " operator

if ! [[ "$num1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: One of the inputs is not a valid number."
    exit 1
fi

case "$operator" in
    +)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $result"
        ;;
    -)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $result"
        ;;
    '*')
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $result"
        ;;
    /)
        if [[ "$num2" == 0 ]]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $result"
        fi
        ;;
    *)
        echo "Error: Invalid operator. Please use one of +, -, *, /."
        ;;
esac
