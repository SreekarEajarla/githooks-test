#!/bin/sh

if [ -e .git/hooks/pre-commit ]; then
    echo "Removing the existing pre-commit hook."
    rm -rf .git/hooks/pre-commit
fi

# Create the symbolic link
ln -s ../../scripts/hooks/pre-commit .git/hooks/pre-commit
echo "Symbolic link created successfully."