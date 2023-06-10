#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ff_int=(
	"\#{pykma}"
	"\#{pykma_sh}"
)
ff_cmd=(
	"#(pykma0%20lk)"
	"#(pykma0%20lsh)"
)
# Use interpol.py to interploate
# topt -> tmux option
get_topt() {
	local OPT=$1
	local VAL="$(tmux show -gqv $OPT)"
	echo "GET $OPT -> $VAL" >> $CURRENT_DIR/dragonfly.log
	if [ -z "$VAL" ]; then
		echo $2
	else 
		echo $VAL
	fi
}
set_topt() { tmux set -gq "$1" "$2"; }
upd_topt() {
	local OPT=$1
	local VAL=$(get_topt $OPT)
	local NVAL="$(interpol.py "$VAL" INT ${ff_int[@]} AS ${ff_cmd[@]})"
	echo "UPD ${OPT} -> ${VAL} -> ${NVAL}" >> $CURRENT_DIR/firefly.log
	set_topt $1 $NVAL
}