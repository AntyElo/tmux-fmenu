# tmux-fmenu - the C-t menu
(Uses hggit)

[Menu about panel](./menu) with [./apps/](./apps/)
 that contain [`'send C-t hotkey' ](./menu 'Built-in'),
 [Calendar](./apps/01-ncal 'ncal, yep'),
 [Minishell](./apps/03-subshell '$SHELL used'),
 [LEDs Cheat Sheat](./apps/04-ledcs "python3 for input\(f'{Message}'\) "),
 <a title="(put ~ to end of filename to hide)"> commands </a>

## Install
This plugin use [![* ](https://mercurial-scm.org/images/favicon.ico)Mercurial SCM](https://mercurial-scm.org),
and can be installed as a script:

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
|Property          |Def*   |Description                                        |
|:-----------------|:------|:--------------------------------------------------|
|@fmenu@hotkey     |C-t    |hotkey for call fmenu (exemple of ./base g)        |
|#{fmenu-hotkey}   | -     |hotkey for call fmenu (exemple of ./base us)       |

\* Default value
