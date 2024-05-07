#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_ESC=`echo "$CURRENT_DIR" | sed "s/\\//\\\\\\\\\//g"`
source "$CURRENT_DIR/base"

# bind
tmux bind -N "fmenu" -n `tmux_oget @fmenu-hotkey ^t` "run-shell $CURRENT_DIR/menu"

# update
PAIRS=(
	"#{fmenu-static}/`tmux_oget @fmenu-hotkey ^t`"
	#"#{fmenu-hotkey}/#($CURRENT_ESC\/base\\\\ g\\\\ @g\\\\ gg)"
)
tmux_upd_status ${PAIRS[@]}
