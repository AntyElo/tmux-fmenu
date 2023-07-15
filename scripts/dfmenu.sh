#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#source "$CURRENT_DIR/shared.sh"

CMD='tmux menu -T dfmenu -x P -y S "Send dfmenu hotkey" C-t "send C-t" '`$CURRENT_DIR/../dfmenuc`
echo $CMD | bash
