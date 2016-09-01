#!/usr/bin/env bash

terminate_vim_in_current_session() {
    tmux list-panes -F "#{pane_id} #{pane_current_command}" | grep 'vim' | awk '/[0-9]+/{ print $1 }' | while read paneId; do
        tmux select-pane -t $paneId
        tmux send-keys :wqall
        tmux send-keys Enter
    done
}

terminate_vim_in_sessions() {
    # TODO: Add looping through all windows of each session.
    tmux list-sessions -F "#{session_id}" | while read sessionId; do
        tmux switch-client -n
        terminate_vim_in_current_session
    done
}

terminate_vim_in_sessions
