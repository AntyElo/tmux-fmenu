# DragonFly Plug-in of tmux
DragonFly Plug-in, or DFP - the other implementation of ~~letters~~ butterfly plugin
It provide: 

## Contents of dfp
  * [`interpol`](./bin/interpol
  'Like do_interpolate, but simplefated')

  * [`dfss`](./scripts/shared.sh
  'Also known as DFScreenSaver; based on libcaca') (`Mod ^l`)


  * [Applets](./scripts/shared.sh):
     + [`#{pykma< |h|x>}`](./bin/pykma "pykma's: layout, hotkey, x11-layout")
     + [`#{dfmenuh}`](./scripts/dfmenu.sh 'dfmenu hotkey')

  * [Menu about panel](./scripts/dfmenu.sh) (`^t`) with [./apps/](./apps/)
     + [`^t` hotkey](./scripts/dfmenu.sh 'Built-in')
     + [Calendar](./apps/01-ncal 'ncal, yep')
     + [Minishell](./apps/03-subshell '$SHELL used')

## Install
See on tipical tmux manual-installed plugin (becouse [![!ico ](https://mercurial-scm.org/images/favicon.ico)mercurial](https://mercurial-scm.org))

```sh
$ cd .tmux && mkdir mplugins; cd mplugins  
$ hg clone #<...>
$ echo 'run "#{HOME}/.tmux/mplugins/dragonfly/dragonfly.tmux"' >> ~/.tmux.conf
```
