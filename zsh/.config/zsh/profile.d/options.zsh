fpath=(~/.zsh/completion /usr/local/share/zsh-completions ~/.config/zsh/functions $fpath)
autoload -Uz compinit && compinit -i
zmodload zsh/langinfo
path+=(/usr/local/sbin)
export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
HISTFILE=~/.zsh_history
unsetopt menucomplete
unsetopt automenu
setopt interactivecomments
unsetopt histverify
setopt histsubstpattern
setopt inc_append_history
unsetopt BEEP
# setopt share_history 
