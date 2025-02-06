#!/bin/sh

# Check if the symbolic link already exists
if [ -L .git/hooks/pre-commit ]; then
    echo "Symbolic link already exists. Removing the existing link."
    rm -rf .git/hooks/pre-commit
elif [ -e .git/hooks/pre-commit ]; then
    echo "A file named 'pre-commit' already exists in .git/hooks. Please remove it manually."
    exit 1
fi

# Create the symbolic link
ln -s ../../scripts/hooks/pre-commit .git/hooks/pre-commit
echo "Symbolic link created successfully."