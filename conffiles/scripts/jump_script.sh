#!/usr/bin/env bash
# Define the directory mappings
declare -A directories
directories["d"]="/home/happylime/Downloads"
directories["Photos"]="/Path/to/Photos"
# Add more mappings as needed

# Check if a directory keyword is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 [Keyword]"
  exit 1
fi

# Get the directory path associated with the keyword
keyword="$1"
directory="${directories[$keyword]}"

# Check if the keyword exists in the mappings
if [ -z "$directory" ]; then
  echo "Keyword '$keyword' is not recognized."
  exit 1
fi

# Change the current directory
cd "$directory" || {
  echo "Failed to change to directory: $directory"
  exit 1
}

