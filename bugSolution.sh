#!/bin/bash

# This script corrects the race condition by using process substitution.

while IFS= read -r file; do
  echo "Processing: $file"
  # Assume some processing of the file happens here
done < <(find . -type f -print0)