#!/usr/bin/env bash
# #TMUX plugin: firefly ;
# #TMUX flags: manual, ;
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/shared.sh"

main() {
	upd_topt "status-right"
	upd_topt "status-left"
	bind '`' run upd_topt "status-right"
	#upd_topt "status-format"
}
