#!/usr/bin/env bash
# #TMUX plugin: dragonfly ;
# #TMUX flags: manual, hg ;
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# topt -> tmux option
get_topt() {
	local GOPT=$1
	if [ -z "$GOPT" ]; then echo ; fi
	local GVAL=`tmux show -gqv "$GOPT"`
	if [ -z "$GVAL" ]; then
		echo "$2"
	else
		echo "$GVAL"
	fi
}

# bind
tmux bind -N "fmenu" -n `get_topt @fmenu-hotkey ^t` "run-shell $CURRENT_DIR/fmenu.sh"
