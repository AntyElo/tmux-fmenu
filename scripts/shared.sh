#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "    [new]" >> $CURRENT_DIR/dragonfly.log
df_intp=(
	"#{pykma}=#(pykma%20lk)"
	"#{pykmah}=#(pykma%20lh)"
	"#{pykmax}=#(pykma%20xkb)"
	"#{dfmenu_hotkey}=!IMPL"
)
# Use interpol.py to interploate
# topt -> tmux option
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
set_topt() { tmux set -gq "$1" "$2"; }
upd_topt() {
	local UOPT=$1 
	local UVAL=`get_topt $1`
	local NVAL=`interpol "${UVAL}" ${df_intp[@]}`
	echo "UPD \"${UOPT}\" -> \"${UVAL}\"" >> $CURRENT_DIR/dragonfly.log
	echo " -> \"${NVAL}\"" >> $CURRENT_DIR/dragonfly.log
	set_topt "$1" "$NVAL"
}

#DFScreenSaver
DFSS=`get_topt @dfss cacafire`
DFSSK=`get_topt @dfssk ^l`
tmux bind $DFSSK "neww -t 0 'DISPLAY= $DFSS'"

#Pykma
tmux bind `pykma lsh` "run pykma sw"