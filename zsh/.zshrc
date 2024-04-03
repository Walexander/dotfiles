# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi
# Entirety of my startup file... then
ZSH_DISABLE_COMPFIX=false
CONFIG_DIR=$HOME/.config/zsh/profile.d
for script in $CONFIG_DIR/*.zsh; do
	. $script
done

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [[ "$PROFILE_STARTUP" == true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi

# The next line updates PATH for the Google Cloud SDK.
# The next line enables shell command completion for gcloud.
eval "$(starship init zsh)"
