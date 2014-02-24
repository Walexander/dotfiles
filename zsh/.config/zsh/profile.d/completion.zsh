fpath=($HOME/.config/zsh/functions /usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2
