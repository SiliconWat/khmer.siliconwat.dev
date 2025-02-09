#!/bin/bash

# Read the JSON file and process each object
jq -c '.[]' Dictionary.json | while read -r item; do
    id=$(echo "$item" | jq -r '.id')  # Extract the ID
    echo "$item" > "id/$id.json"       # Save as id.json inside the id folder
    echo "$id created"
done

# command: bash id.sh