#!/bin/bash

screenshot_dir="/tmp/screenshots"
current_date=$(date '+%Y%m%d')
screenshot_file="$screenshot_dir/screenshot_$current_date_$(date '+%H%M%S').png"

# Ensure the directory exists
mkdir -p "$screenshot_dir"

# Take screenshot and copy to clipboard
scrot -s "$screenshot_file"
xclip -selection clipboard -t image/png < "$screenshot_file"
notify-send "Screenshot taken and copied to clipboard" -i "$screenshot_file"

# Cleanup: Delete screenshots older than 1 day
find "$screenshot_dir" -name 'screenshot_*' -type f -mtime +0 -exec rm -f {} \;
