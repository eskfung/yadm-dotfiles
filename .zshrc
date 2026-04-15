# Autocompletion
autoload -Uz compinit && compinit

unsetopt EXTENDED_GLOB
unsetopt NOMATCH

# asdf
. $HOME/.asdf/asdf.sh
# direnv
eval "$(direnv hook zsh)"
# starship
eval "$(starship init zsh)"

gtidy() {
  git fetch --prune --all;
  git remote prune origin
}

