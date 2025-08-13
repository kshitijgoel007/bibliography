#!/bin/bash

# This script stages all changes and creates a commit with a timestamped message.

# Exit immediately if a command exits with a non-zero status.
set -e

# Define the commit message format.
# The 'date' command generates the current date and time string.
# Example: "Auto-commit: Wed Aug 13 19:57:00 EDT 2025"
COMMIT_MESSAGE="Auto-commit: $(date)"

# Stage all new, modified, and deleted files in the current directory.
# Using -A ensures all changes are included.
echo "Staging all changes..."
git add -A

# Commit the staged changes with the generated message.
# The -m flag is used to specify the commit message inline.
echo "Committing with message: \"$COMMIT_MESSAGE\""
git commit -m "$COMMIT_MESSAGE"

echo "✅ Successfully committed all changes."

