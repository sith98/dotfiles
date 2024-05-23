#!/bin/bash

# Path to your file
file_path="/home/simon/scripts/links.txt"

# Extract the first column (names) from the file
names=$(awk '{print $1}' "$file_path")

# Use dmenu to select a name
selected_name=$(echo "$names" | dmenu -i -nb '#0D0825' -nf '#EFEDAA' -sb '#CBB2DE' -sf '#0D0825' -fn 'DejaVu Sans Mono:bold:pixelsize=18')

# If a name was selected
if [ -n "$selected_name" ]; then
    # Find corresponding URL using awk
     if echo "$names" | grep -q "$selected_name"; then
	    url=$(awk -v name="$selected_name" '$1 == name {print $2}' "$file_path")
	    
	    # Open URL in Firefox
	    firefox --new-tab "$url"
     fi
fi

