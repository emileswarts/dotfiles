# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export OH_MY_ZSH_DEBUG="true"

test -f "$HOME/src/hgd/hd" && export OH_MY_ZSH_HG="$HOME/src/hgd/hd" || export OH_MY_ZSH_HG='hg'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kp"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(command-coloring git)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...

unsetopt correct_all
unsetopt promptcr
alias tmux="tmux"
export TERM=screen-256color
export EDITOR=vim
export KEYTIMEOUT=1
DISABLE_AUTO_UPDATE=true

PATH=$PATH"/bin:"
PATH=$PATH"/usr/local/bin:"
PATH=$PATH"/usr/local:"
PATH=$PATH"/usr/bin:"
PATH=$PATH"/usr/local/sbin:"
PATH=$PATH"/usr/sbin:"
PATH=$PATH"/sbin:"
PATH=$PATH"~/bin:"
PATH=$PATH"/Users/korpzilla/bin:"

export PATH
stty -ixon

export GREP_OPTIONS='--color=auto'
bindkey -v
bindkey '^R' history-incremental-search-backward
#
# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=10000
SAVEHIST=10000 # nice for logging
setopt extended_history
setopt share_history
function history-all { history -E 1 }

set -o vi

. $HOME/bin/z/z.sh
function precmd () {
	_z --add "$(pwd -P)"
}

eval "$(rbenv init -)"
eval "$(set -o vi)"

export LSCOLORS="Bxfxcxdxbxegedabagacad"

bindkey -M vicmd 'e' up-history
bindkey -M vicmd 'n' down-history

GPG_TTY=$(tty)
export GPG_TTY
export PY_USER_BIN=/Users/korpzilla/Library/Python/2.7/bin
export PATH=$PY_USER_BIN:$PATH
export AWS_REGION=eu-west-1
