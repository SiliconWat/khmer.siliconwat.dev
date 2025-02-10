#!/bin/bash

# Extract just the words and create a new JSON array
jq '[.[] | .word]' Dictionary.json > Words.json

echo "words created"
