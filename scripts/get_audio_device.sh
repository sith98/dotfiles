#!/bin/bash

# Get the default sink
default_sink=$(pactl get-default-sink)

# Check if the default sink contains "alsa_output"
if [[ $default_sink == *"alsa_output"* ]]; then
    pactl list sinks | awk "/$(pactl get-default-sink)/ {foundA=1} foundA && /Active Port/ {print \$NF; exit}"
else
    pactl list sinks | awk -v default_sink="$(pactl get-default-sink)" '
	$0 ~ default_sink {foundA=1}
	foundA && /device.description/ {
	    match($0, /"([^"]*)"/, arr)
	    print arr[1]
	    exit
	}
	'
fi
