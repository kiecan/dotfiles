#!/usr/bin/env bash
set -euo pipefail

DIR="$HOME/Pictures/BingWallpapers"
mkdir -p "$DIR"

# Bing JSON API
URL="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"
IMG=$(curl -s "$URL" | jq -r '.images[0].url')
IMGURL="https://www.bing.com${IMG}"

FILENAME="$DIR/today.jpg"

# Always refresh today's image
curl -s -o "$FILENAME" "$IMGURL"

# Tell hyprpaper to swap wallpaper
hyprctl hyprpaper preload "$FILENAME"
hyprctl hyprpaper wallpaper ",$FILENAME"

wal -i "$FILENAME" -n         # -n = don’t set wallpaper (we’re doing that ourselves)
hyprctl reload
