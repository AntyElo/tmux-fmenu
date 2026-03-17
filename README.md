# tmux-fmenu - the C-t menu

Menu about panel with little goodies (script strings), `./apps/`.

## Install
This plugin can be installed as a script:

```
mkdir -p ~/.tmux/manual/
cd ~/.tmux/manual/
# in future it should be `hg clone https://<hg-provider>/AntyElo/tmux-fmenu`
git clone https://github.com/AntyElo/tmux-fmenu.git
echo 'run "#{HOME}/.tmux/manual/fmenu/fmenu.tmux"' >> ~/.tmux.conf
```

or via Tmux Plugin Manager, by adding `set -g @plugin "AntyElo/tmux-fmenu"` in ~/.tmux.conf

## @Options and #Indicators

|Property           |Def*   |Description                                        |
|:------------------|:------|:--------------------------------------------------|
|@fmenu@hotkey      |C-t    |hotkey for call fmenu (exemple of ./base g)        |
|@fmenu@screensaver |       |binary to show screensaver in fmenu>screensaver    |
|#{fmenu-hotkey}    | -     |hotkey for call fmenu (exemple of ./base us)       |

\* Default value

NB: I use [hggit](https://pypi.org/project/hg-git/ ) for this repo
