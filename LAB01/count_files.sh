#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Please provide a directory path."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: The provided path is not a valid directory."
    exit 1
fi

file_count=$(find "$1" -type f | wc -l)
echo "The number of files in the directory is: $file_count"
