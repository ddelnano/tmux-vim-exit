#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS_DIR=$DIR/scripts

source $SCRIPTS_DIR/helpers.sh
source $SCRIPTS_DIR/exit.sh

set_exit_key_binding() {
    tmux bind-key "$(exit_key_binding)" run-shell -b "$SCRIPTS_DIR/exit.sh"
}

main() {
    set_exit_key_binding
}

main
