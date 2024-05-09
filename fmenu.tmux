#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/base"

# bind
tmux bind -N "fmenu" -n `tmux_oget @fmenu-hotkey ^t` "run-shell $CURRENT_DIR/menu"

# update
tmux_upd_status \
	"#{fmenu-hotkey}" "#($CURRENT_DIR/base g @fmenu-hotkey ^t)" \
	"#{fmenu-hotkey-static}" "`tmux_oget @fmenu-hotkey ^t`"      \
	""
