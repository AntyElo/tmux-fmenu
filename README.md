# fmenu - fork of dragofly's ^t menu

[Menu about panel](./scripts/dfmenu.sh) with [./apps/](./apps/) contain:
   + [`^t` hotkey](./scripts/dfmenu.sh 'Built-in')
   + [Calendar](./apps/01-ncal 'ncal, yep')
   + [Minishell](./apps/03-subshell '$SHELL used')

## Install
See on tipical tmux manual-installed plugin (becouse [![* ](https://mercurial-scm.org/images/favicon.ico)mercurial](https://mercurial-scm.org))

```sh
$ cd .tmux && { mkdir mplugins; cd mplugins }  
$ hg clone #<http://hg.unknownhosting.org/user/fmenu>
$ echo 'run "#{HOME}/.tmux/mplugins/fmenu/fmenu.tmux"' >> ~/.tmux.conf
```

## Options
&lt;option&gt;(&lt;default value&gt;): &lt;description&gt;  
@fmenu-hotkey(^t): hotkey for call fmenu   
