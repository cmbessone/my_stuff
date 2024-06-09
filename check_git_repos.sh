#!/bin/bash
for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "$dir is a Git repository"
  fi
done

