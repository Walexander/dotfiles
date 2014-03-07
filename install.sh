#!/bin/zsh
dotfiles=$(dirname $0)
. $dotfiles/functions
stow Bin
stow git
stow jshint
stow lftp
stow tmux
stow vim
stow zsh
stow powerline
stow slate

install_powerline
install_gdiff
install_vim_vundle

