powerline_dir=$(pip show powerline-status | grep Location | cut -d":" -f2 | gsed 's/\s//g' )/powerline/bindings

powerline_init_file=$powerline_dir/zsh/powerline.zsh

if [ -f $powerline_init_file ]; then
	. $powerline_init_file
fi
