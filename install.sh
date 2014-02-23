#!/bin/zsh
export STOW_DIR=$HOME
stow Bin
stow git
stow jshint
stow lftp
stow tmux
stow vim
stow zsh
stow powerline

install_powerline
install_gdiff
install_vim_vundle

function install_powerline(){
	pip install --user git+git://github.com/Lokaltog/powerline
	powerline_dir=$(pip show Powerline | grep Location | cut -d":" -f2)/powerline/bindings/
	ln -s $powerline_dir/tmux/powerline.conf $HOME/.powerline.tmux.conf
	ln -s $powerline_dir/zsh/powerline.zsh $HOME/.config/zsh/powerline.zsh
}
function install_vim_vundle(){
	vim -u .config/vim/vimrc -c ":BundleInstall" -c "qa"
}
function install_gdiff(){
	pip install diff-match-patch
}


