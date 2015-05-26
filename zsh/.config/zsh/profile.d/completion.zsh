fpath=($HOME/.config/zsh/functions /usr/local/share/zsh-completions $fpath)
. /usr/local/bin/aws_zsh_completer.sh
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2

complete -C '/usr/local/bin/aws_completer' aws
