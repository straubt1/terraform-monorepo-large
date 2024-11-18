#!/bin/bash

# Usage: ./generate_binary.sh <filename> <size>
# Example: ./generate_binary.sh myfile.bin 10M

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <size>"
    echo "Example: $0 myfile.bin 10M"
    exit 1
fi

FILENAME=$1
SIZE=$2

# Generate the file with random data
dd if=/dev/urandom of="$FILENAME" bs=1 count=0 seek="$SIZE" status=progress

echo "Binary file '$FILENAME' of size $SIZE created."
