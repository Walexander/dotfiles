CONFIG_DIR=$HOME/.config/zsh/profile.d
for script in $CONFIG_DIR/*.zsh; do
	. $script
done
