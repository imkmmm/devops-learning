#!/bin/bash

echo "--- CLEANUP UTILITY ---"
# Ask the user for the file extension
echo "Enter the file extension you want to delete (e.g., .tmp or .old):"
read EXTENSION

# List the files first so the user can see what will happen (Observability!)
echo "Looking for files ending in $EXTENSION..."
ls *$EXTENSION

# Ask for confirmation
echo "Are you sure you want to delete these files? (y/n)"
read CONFIRM

if [ "$CONFIRM" == "y" ]; then
    rm *$EXTENSION
    echo "Files deleted."
else
    echo "Cleanup cancelled."
fi
