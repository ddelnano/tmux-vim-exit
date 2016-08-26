#!/usr/bin/env bash

terminate_vim_in_current_session() {
    tmux list-panes -F "#{pane_id} #{pane_current_command}" | grep 'vim' | awk '/[0-9]+/{ print $1 }' | while read paneId; do
        tmux select-pane -t $paneId
        tmux send-keys :wqall
        tmux send-keys Enter
    done
}

terminate_vim_in_sessions() {
    # TODO: Add looping through sessions.
    # TODO: Add looping through all windows of each session.
    terminate_vim_in_current_session
}

terminate_vim_in_sessions
