#!/bin/bash

files=$(ls $HOME/scripts/peripheral)

# Use dmenu to select a name
selected_file=$(echo "$files" | dmenu -i -nb '#0D0825' -nf '#EFEDAA' -sb '#CBB2DE' -sf '#0D0825' -fn 'DejaVu Sans Mono:bold:pixelsize=18')

# If a name was selected
if [ -n "$selected_file" ]; then
    # Find corresponding URL using awk
    if echo "$files" | grep -q "$selected_file"; then
	$HOME/scripts/peripheral/$selected_file
    fi
fi

