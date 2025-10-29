#!/bin/zsh

PR_URL=$(gh pr create -B main -d -t "Release: dummy" -b "")


if [ $? -ne 0 ]; then
  echo "SNAFU"
else
  echo "We good"
fi
echo "PR_URL is: $PR_URL"
