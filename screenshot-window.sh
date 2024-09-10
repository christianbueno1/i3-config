#!/bin/bash

# Define the directory and format for the screenshot filename
DIR=~/Pictures/Screenshots
FILENAME="Screenshot from $(date '+%Y-%m-%d %H-%M-%S').png"
FILEPATH="$DIR/$FILENAME"

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Take the window screenshot using maim and save it
# -i --windowid <id> Select a window by its ID
maim -i $(xdotool getactivewindow) "$FILEPATH"

# Copy the screenshot to the clipboard
xclip -selection clipboard -t image/png -i "$FILEPATH"

# Print the filepath (optional)
echo "Screenshot saved to: $FILEPATH"

