#!/bin/bash

# This script stages all changes, creates a commit with a timestamped message,
# and pushes the commit to the remote repository.

# Exit immediately if a command exits with a non-zero status.
set -e

# Define the commit message format.
# The 'date' command generates the current date and time string.
# Example: "Auto-commit: Wed Aug 13 19:58:00 EDT 2025"
COMMIT_MESSAGE="Auto-commit: $(date)"

# Stage all new, modified, and deleted files in the current directory.
# Using -A ensures all changes are included.
echo "Staging all changes..."
git add -A

# Commit the staged changes with the generated message.
# The -m flag is used to specify the commit message inline.
echo "Committing with message: \"$COMMIT_MESSAGE\""
git commit -m "$COMMIT_MESSAGE"

# Push the commit to the remote repository.
# This assumes your local branch is set up to track a remote branch.
echo "Pushing changes to the remote repository..."
git push

echo "✅ Successfully committed and pushed all changes."
