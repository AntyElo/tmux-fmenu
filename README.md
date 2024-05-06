# fmenu - the C-t menu

[Menu about panel](./scripts/dfmenu.sh) with [./apps/](./apps/) that contain [`'send C-t hotkey' ](./scripts/dfmenu.sh 'Built-in'), [Calendar](./apps/01-ncal 'ncal, yep'), [Minishell](./apps/03-subshell '$SHELL used') commands

## Install
See on tipical tmux manual-installed plugin (becouse [![* ](https://mercurial-scm.org/images/favicon.ico)mercurial](https://mercurial-scm.org))

```sh
$ cd .tmux && { mkdir hg; cd hg }  
$ hg clone #<http://hg.unknownhosting.org/user/fmenu>
$ echo 'run "#{HOME}/.tmux/hg/fmenu/fmenu.tmux"' >> ~/.tmux.conf
```

## @Options and #Indicators
| Property     | Def*| Description          |
|--------------|-----|----------------------|
| @fmenu-hotkey|C-t  | hotkey for call fmenu|

*Default value
