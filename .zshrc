#
# User configuration sourced by interactive shells
#
#
# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

export PATH="/usr/local/sbin:$PATH"

be () {
  if [[ -a Gemfile ]]; then
    bundle exec $*
  else
    command $*
  fi
}

#
# User configuration sourced by interactive shells
#

unsetopt EXTENDED_GLOB

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# direnv
eval "$(direnv hook zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Yarn-managed binaries
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# asdf
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

alias hl='heroku local'
