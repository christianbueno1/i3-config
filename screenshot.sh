#!/bin/bash

# Define the directory and format for the screenshot filename
DIR=~/Pictures/Screenshots
FILENAME="Screenshot from $(date '+%Y-%m-%d %H-%M-%S').png"
FILEPATH="$DIR/$FILENAME"

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Take the screenshot using main and save it
# -u --hidecursor Hide the cursor in the screenshot
maim -u "$FILEPATH"

# Copy the screenshot to the clipboard
xclip -selection clipboard -t image/png -i "$FILEPATH"

# Print the filepath (optional)
echo "Screenshot saved to: $FILEPATH"
