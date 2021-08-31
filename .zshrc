unsetopt EXTENDED_GLOB

alias hl='heroku local'

# Yarn-managed binaries
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# asdf
. $HOME/.asdf/asdf.sh
# iterm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# direnv
eval "$(direnv hook zsh)"
# starship
eval "$(starship init zsh)"

