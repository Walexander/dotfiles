fpath=(/usr/local/share/zsh-completions ~/.config/zsh/functions $fpath)
path+=(/usr/local/sbin)
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
unsetopt menucomplete
unsetopt automenu
setopt interactivecomments
unsetopt histverify
setopt histsubstpattern
setopt inc_append_history
# setopt share_history 
