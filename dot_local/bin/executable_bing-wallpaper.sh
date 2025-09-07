#!/usr/bin/env bash
set -euo pipefail

# Download folder
DIR="$HOME/Pictures/BingWallpapers"
mkdir -p "$DIR"

# Bing JSON API (last 1 day)
URL="https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"

# Get image URL
IMG=$(curl -s "$URL" | jq -r '.images[0].url')
IMGURL="https://www.bing.com${IMG}"

# File path
FILENAME="$DIR/$(date +%Y-%m-%d).jpg"

# Download if not already saved
if [ ! -f "$FILENAME" ]; then
  curl -s -o "$FILENAME" "$IMGURL"
fi

# Set wallpaper with swww
swww img "$FILENAME" --transition-type any

