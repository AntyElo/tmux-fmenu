#!/usr/bin/env bash
# #TMUX plugin: dragonfly ;
# #TMUX flags: manual, hg ;
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/shared.sh"

TEST=`which crudini`
if [ -z "$TEST" ]; then echo "dragonfly: error: requite crudini"; exit 1; fi

main() {
	upd_topt "status-right"
	upd_topt "status-left"
	#upd_topt "status-format"
}
main