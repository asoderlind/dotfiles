#!/bin/bash

# Check if the user provided a directory
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Check if the specified directory exists
if [ ! -d "$1" ]; then
  echo "Error: Directory not found."
  exit 1
fi

# Set the compression quality (0 to 100, lower value means higher compression)
compression_quality=75

# Compress all JPG and PNG images in the specified directory
find "$1" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -exec convert "{}" -quality ${compression_quality} "{}" \;

echo "Image compression completed."
