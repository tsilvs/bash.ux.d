#!/bin/bash

# Create a temporary file
temp_file=$(mktemp)

# Read the history file line by line
while IFS= read -r line
do
  # If the line starts with a '#', it's a timestamp, so just write it to the temp file
  if [[ "$line" =~ ^# ]]; then
    echo "$line" >> "$temp_file"
  else
    # If the line is a command, only write it to the temp file if it's not a duplicate
    if ! grep -qx "$line" "$temp_file"; then
      echo "$line" >> "$temp_file"
    fi
  fi
done < ~/.bash_history

# Replace the original history file with the cleaned one
mv "$temp_file" ~/.bash_history

# Reload the history into the current shell
history -r ~/.bash_history
