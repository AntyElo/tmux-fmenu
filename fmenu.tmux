#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source base

# bind
tmux bind -N "fmenu" -n `get_topt @fmenu-hotkey ^t` "run-shell $CURRENT_DIR/fmenu.sh"
