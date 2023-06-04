#!/bin/bash

# Define the directory where the Markdown files are located
directory="notes"

# Get the list of Markdown files
files=$(find "$directory" -type f -name "*.md")

# Generate the links
links=""
for file in $files; do
    filename=$(basename "$file")
    link="$directory/$filename"
    links+="[$filename]($link)\n"
done

# Insert the links into the README.md file
sed -i "s|<!-- INSERT_LINKS_HERE -->|$links|" README.md
