#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file_path> <start_line> <end_line>"
    exit 1
fi

file_path="$1"
start_line="$2"
end_line="$3"

if [ ! -e "$file_path" ]; then
    echo "File not found: $file_path"
    exit 1
fi


if ! [[ "$start_line" =~ ^[0-9]+$ ]] || ! [[ "$end_line" =~ ^[0-9]+$ ]]; then
    echo "Invalid line numbers. Please provide positive integers."
    exit 1
fi


awk -v start="$start_line" -v end="$end_line" 'NR >= start && NR <= end' "$file_path"