CONFIG_DIR=$HOME/.config/zsh
for script in $CONFIG_DIR/*.zsh; do
	. $script
done
