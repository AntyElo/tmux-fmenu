#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#echo "    [new]" >> $CURRENT_DIR/dragonfly.log
PATH="$PATH:$CURRENT_DIR/../bin"
#echo "PATH=$PATH">> $CURRENT_DIR/dragonfly.log
#echo "BIN interpol=$(which interpol) pykma=$(which pykma)">> $CURRENT_DIR/dragonfly.log

# topt -> tmux option
set_topt() { tmux set -gq "$1" "$2"; }
get_topt() {
	local GOPT=$1
	if [ -z "$GOPT" ]; then echo ; fi
	local GVAL=`tmux show -gqv "$GOPT"`
	#echo -n "GET \"$GOPT\" -> \"$GVAL\" OR \"$2\"; " >> $CURRENT_DIR/dragonfly.log
	if [ -z "$GVAL" ]; then
		echo "$2"
		#echo "GET2" >> $CURRENT_DIR/dragonfly.log
	else
		echo "$GVAL"
		#echo "GET1" >> $CURRENT_DIR/dragonfly.log
	fi
}

DFMENUH=`get_topt @dfmenuh ^t`
DFSS=`get_topt @dfss cacafire`
DFSSH=`get_topt @dfssh ^l`
df_intp=(
	"#{pykma}=#($CURRENT_DIR/../bin/pykma%20lk)"
	"#{pykmah}=#($CURRENT_DIR/../bin/pykma%20lh)"
	"#{pykmax}=#($CURRENT_DIR/../bin/pykma%20-D%20xkb)"
	"#{dfmenuh}=$DFMENUH"
	"#{dfssh}=$DFSSH"
) # Use interpol.py to interploate
upd_topt() {
	local UOPT=$1
	local UVAL=`get_topt $1`
	local NVAL=`interpol "${UVAL}" ${df_intp[@]}`
	#echo "UPD \"${UOPT}\" -> \"${UVAL}\"" >> $CURRENT_DIR/dragonfly.log
	#echo " -> \"${NVAL}\"" >> $CURRENT_DIR/dragonfly.log
	set_topt "$1" "$NVAL"
}

#DFMenu, DFScreenSaver
tmux bind -N "DFMenu" -n $DFMENUH "run-shell $CURRENT_DIR/dfmenu.sh"
tmux bind -N "DFScreanSaver (win0)" $DFSSH "neww -t 0 'DISPLAY= $DFSS'"

#Pykma
PYKMA_RUN="run \"$CURRENT_DIR/../bin/pykma sw\""
tmux bind \` "$PYKMA_RUN"
tmux bind  ё "$PYKMA_RUN"

