# tmux-fmenu - the C-t menu
Uses hggit ( /!\ )

[Menu about panel](./menu) with [./apps/](./apps/)
 that contain [`'send C-t hotkey' ](./menu 'Built-in'),
 [Calendar](./apps/01-ncal 'ncal, yep'),
 [Minishell](./apps/03-subshell '$SHELL used'),
 [LEDs Cheat Sheat](./apps/04-ledcs "python3 for input\(f'{Message}'\) "),
 <a title="(put ~ to end of filename to hide)"> commands </a>

## Install
See on tipical tmux manual-installed plugin
 (becouse [![* ](https://mercurial-scm.org/images/favicon.ico)mercurial](https://mercurial-scm.org))

```sh
$ cd .tmux && { mkdir hg; cd hg }  
$ hg clone #<http://hg.unknownhosting.org/user/fmenu>
$ echo 'run "#{HOME}/.tmux/hg/fmenu/fmenu.tmux"' >> ~/.tmux.conf
```

## @Options and #Indicators
|Property          |Def*   |Description                                        |
|------------------|-------|---------------------------------------------------|
|@fmenu-hotkey     |C-t    |hotkey for call fmenu (exemple of ./base g)        |
|#{fmenu-hotkey}   | -     |hotkey for call fmenu (exemple of ./base us)       |

* Default value
