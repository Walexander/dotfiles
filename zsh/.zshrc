# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
if [ -f '/private/var/folders/xr/xgxjjj5123xdmn7pr821vv9h0000gn/T/tmp.TZR25O79RL/google-cloud-sdk/path.zsh.inc' ]; then . '/private/var/folders/xr/xgxjjj5123xdmn7pr821vv9h0000gn/T/tmp.TZR25O79RL/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/private/var/folders/xr/xgxjjj5123xdmn7pr821vv9h0000gn/T/tmp.TZR25O79RL/google-cloud-sdk/completion.zsh.inc' ]; then . '/private/var/folders/xr/xgxjjj5123xdmn7pr821vv9h0000gn/T/tmp.TZR25O79RL/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for packages
# uninstall by removing these lines
# [[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [[ -f /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
# [[ -f /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/walexander/git/bestforvets-employers-2021/node_modules/tabtab/.completions/slss.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls='exa' > /dev/null 2>&1
