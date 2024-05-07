#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/base"

# bind
tmux bind -N "fmenu" -n `tmux_oget @fmenu-hotkey ^t` "run-shell $CURRENT_DIR/menu"

# update
PAIRS=(
	"#{fmenu-hotkey}/`tmux_oget @fmenu-hotkey ^t`"
)
tmux_upd_status ${PAIRS[@]}}
