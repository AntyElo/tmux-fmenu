# tmux-fmenu - the C-t menu
(Uses hggit)

Menu about panel] with ./apps/ - little goodies

## Install
This plugin can be installed as a script:

```
mkdir -p ~/.tmux/manual/
cd ~/.tmux/manual/
hg clone #<this-repo-hg>
echo 'run "#{HOME}/.tmux/manual/fmenu/fmenu.tmux"' >> ~/.tmux.conf
```

or via Tmux Plugin Manager, on ~/.tmux.conf:
```
set -g @plugin "AntyElo/dragonfly"
```


## @Options and #Indicators
|Property           |Def*   |Description                                        |
|:------------------|:------|:--------------------------------------------------|
|@fmenu@hotkey      |C-t    |hotkey for call fmenu (exemple of ./base g)        |
|@fmenu@screensaver |       |binary to show screensaver in fmenu>screensaver    |
|#{fmenu-hotkey}    | -     |hotkey for call fmenu (exemple of ./base us)       |

\* Default value
