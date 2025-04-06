#!/bin/zsh
dotfiles=$(dirname $0)
. $dotfiles/functions
stow Bin
stow git
stow vim
stow zsh
stow powerline
install_powerline

