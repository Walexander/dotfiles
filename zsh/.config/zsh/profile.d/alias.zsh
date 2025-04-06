alias ls='ls --color'
alias vim='nvim'
alias vi='nvim'
alias ll='ls -lart'
alias k=kubectl

complete -C `which aws_completer` aws
function kadmin() {
  source <(kubectl completion zsh)
  source <(kops completion zsh)
}
