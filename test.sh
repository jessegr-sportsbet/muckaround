#!/bin/zsh

PR_URL=$(gh pr create -B main -d -t "Release: dummy" -b "")


if [ $? -ne 0 ]; then
  echo "SNAFU"
  exit 0
else
  echo "We good"
fi
echo "PR_URL is: $PR_URL"

# Check if important files are touched. grep -E takes a pipe seperated string of file names "file1.txt|file2.txt"
IMPORTANT_FILES_CHANGED=$(gh pr diff $PR_URL --name-only | grep -E "importantFile.md")

if [ $IMPORTANT_FILES_CHANGED -eq null ]; then
  echo "No important files changed"
else
  echo "Important files changed: $IMPORTANT_FILES_CHANGED"
fi

