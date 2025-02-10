#!/bin/sh

if [ -e .git/hooks/pre-commit ]; then
    echo "Removing the existing pre-commit hook."
    rm -rf .git/hooks/pre-commit
fi

ln -s ../../scripts/hooks/pre-commit .git/hooks/pre-commit
echo "Symbolic link created successfully for pre-commit."

if [ -e .git/hooks/post-commit ]; then
    echo "Removing the existing post-commit hook."
    rm -rf .git/hooks/post-commit
fi

ln -s ../../scripts/hooks/post-commit .git/hooks/post-commit
echo "Symbolic link created successfully for post-commit."