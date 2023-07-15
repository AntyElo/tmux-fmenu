#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "    [new]" >> $CURRENT_DIR/dragonfly.log

# topt -> tmux option
set_topt() { tmux set -gq "$1" "$2"; }
get_topt() {
	local GOPT=$1
	if [ -z "$GOPT" ]; then echo ; fi
	local GVAL=`tmux show -gqv "$GOPT"`
	echo -n "GET \"$GOPT\" -> \"$GVAL\" OR \"$2\"; " >> $CURRENT_DIR/dragonfly.log
	if [ -z "$GVAL" ]; then
		echo "$2"
		echo "GET2" >> $CURRENT_DIR/dragonfly.log
	else
		echo "$GVAL"
		echo "GET1" >> $CURRENT_DIR/dragonfly.log
	fi
}

DFMENUH=`get_topt @dfmenuh ^t`
DFSS=`get_topt @dfss cacafire`
DFSSH=`get_topt @dfssh ^l`
df_intp=(
	"#{pykma}=#(pykma%20lk)"
	"#{pykmah}=#(pykma%20lh)"
	"#{pykmax}=#(pykma%20xkb)"
	"#{dfmenuh}=$DFMENUH"
	"#{dfssh}=$DFSSH"
) # Use interpol.py to interploate
upd_topt() {
	local UOPT=$1
	local UVAL=`get_topt $1`
	local NVAL=`interpol "${UVAL}" ${df_intp[@]}`
	echo "UPD \"${UOPT}\" -> \"${UVAL}\"" >> $CURRENT_DIR/dragonfly.log
	echo " -> \"${NVAL}\"" >> $CURRENT_DIR/dragonfly.log
	set_topt "$1" "$NVAL"
}

#DFMenu, DFScreenSaver
tmux bind -N "DFMenu" -n $DFMENUH "run-shell $CURRENT_DIR/dfmenu.sh"
tmux bind -N "DFScreanSaver (win0)" $DFSSH "neww -t 0 'DISPLAY= $DFSS'"

#Pykma
tmux bind \` "run \"pykma sw\""
tmux bind  ё "run \"pykma sw\""

