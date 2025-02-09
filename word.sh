#!/bin/bash

# Read the JSON file and process each object
jq -c '.[]' Dictionary.json | while read -r item; do
    word=$(echo "$item" | jq -r '.word')  # Extract the word
    echo "$item" > "word/$word.json"      # Save as word.json inside the name folder
    echo "$word created"
done

# command: bash id.sh