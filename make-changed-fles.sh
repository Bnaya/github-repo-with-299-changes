#!/bin/bash

# Default values
BASENAME="$1"
COUNT="$2"
CONTENT="$3"

# Fallback to defaults if not provided
BASENAME="${BASENAME:-file-to-change}"
COUNT="${COUNT:-299}"
CONTENT="${CONTENT:-$(date)}"

# Ensure directory exists
mkdir -p out-files

# Generate files
for ((i=1; i<=COUNT; i++)); do
  echo "$CONTENT" > "out-files/${BASENAME}${i}"
done

echo "Created $COUNT files in 'out-files/'"