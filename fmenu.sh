#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#source "$CURRENT_DIR/shared.sh"

echo "tmux menu -T fmenu -x P -y S 'Send fmenu hotkey' C-t 'send C-t' `for i in $(ls $CURRENT_DIR/apps/) ; do cat $CURRENT_DIR/apps/$i done`" | bash
