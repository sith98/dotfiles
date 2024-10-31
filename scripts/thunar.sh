#!/bin/bash

query=$(dmenu -p "Zoxide query:" -i -nb '#0D0825' -nf '#EFEDAA' -sb '#CBB2DE' -sf '#0D0825' -fn 'DejaVu Sans Mono:bold:pixelsize=18' < /dev/null)

if [ -n "$query" ]; then
	directory=$(zoxide query $query)
	if [ -n "$directory" ]; then
		thunar $directory
	fi
fi
