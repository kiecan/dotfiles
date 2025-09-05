#!/usr/bin/env bash
# Prints current brightness as an icon + percent using brightnessctl
percent=$(brightnessctl -m | awk -F, '{gsub("%","",$4); print $4}')
[ -z "$percent" ] && percent=0

icon=""   # Font Awesome sun; replace with plain "BRI" if needed
echo "$icon ${percent}%"

