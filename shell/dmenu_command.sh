#!/bin/sh
# dmenu_command.sh

# Run dmenu to get the user's command
cmd=$(dmenu -p "Run command:" <&-)

# Check if the user entered a command
if [ -n "$cmd" ]; then
    # Run the command in st
    st -e sh -c "$cmd; exec zsh"
fi
