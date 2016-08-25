#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/scripts/exit.sh

main() {
     terminate_vim_in_sessions
}

main
