#!/bin/zsh

gh pr create -B main -d -t "Release: dummy" -b ""

if [ $? -ne 0 ]; then
  echo "SNAFU"
else
  echo "We good"
fi