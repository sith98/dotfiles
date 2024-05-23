#!/bin/bash

content=$(cat "$1")

new_content=$((content + $2))

echo "$new_content" > "$1"
