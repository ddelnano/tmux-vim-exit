#!/usr/bin/env bash

exit_default="Q"
exit_option="@exit_vim"

# helper functions
get_tmux_option() {
    local option="$1"
    local default_value="$2"
    local option_value=$(tmux show-option -gqv "$option")
    if [ -z "$option_value" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

exit_key_binding() {
    echo "$(get_tmux_option "$exit_option" "$exit_default")"
}
