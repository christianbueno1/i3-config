#!/bin/bash

# Define the directory and format for the screenshot filename
DIR=~/Pictures/Screenshots
FILENAME="Screenshot from $(date '+%Y-%m-%d %H-%M-%S').png"
FILEPATH="$DIR/$FILENAME"

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Take the region screenshot using maim and save it
# -s --select Select a region interactively
maim -s "$FILEPATH"

# Copy the screenshot to the clipboard
xclip -selection clipboard -t image/png -i "$FILEPATH"

# Print the filepath (optional)
echo "Screenshot saved to: $FILEPATH"