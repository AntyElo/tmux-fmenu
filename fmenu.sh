#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/base"

P=""
for i in $(ls $CURRENT_DIR/apps/) ; do
    P="$P `cat $CURRENT_DIR/apps/$i`"
done
P="tmux menu -T fmenu -x P -y S 'Send fmenu hotkey' C-t 'send C-t'$P"
bash -c "$P"
