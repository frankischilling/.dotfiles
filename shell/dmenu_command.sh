#!/bin/sh
# dmenu_command.sh

while true; do
    # Run dmenu to get the user's command
    cmd=$(dmenu -p "Run command:" <&-)

    # Check if the user canceled dmenu
    if [ $? -ne 0 ]; then
        break
    fi

    # Check if the command is not empty
    if [ -n "$cmd" ]; then
        # Check if the command is valid
        if command -v "$cmd" >/dev/null 2>&1; then
            # Run the command in st
            st -e sh -c "$cmd; exec zsh"
            break  # Exit the loop if a valid command is provided
        else
            # Display an error message for invalid command
            echo "Invalid command: $cmd" | dmenu -p "Error" -l 2
        fi
    fi
done
