PS4=$'%D{%M%S%.} %N:%i> '
exec 3>&2 2>$HOME/tmp/startlog.$$
setopt xtrace prompt_subst
