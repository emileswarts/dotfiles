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
export TERM=xterm-256color
export EDITOR=vim

PATH=$HOME".rbenv/bin:"
PATH=$PATH".cabal/bin:"
PATH=$PATH"/bin:"
PATH=$PATH"/usr/local/bin:"
PATH=$PATH"/usr/local:"
PATH=$PATH"/usr/bin:"
PATH=$PATH"/usr/local/sbin:"
PATH=$PATH"/usr/sbin:"
PATH=$PATH"/sbin:"
PATH=$PATH"/usr/bin/core_perlkb:"
PATH=$PATH"/opt/vagrant/bin:"
PATH=$PATH"/usr/local/mysql/bin:"
PATH=$PATH"/usr/local/mongodb/bin"

export PATH

export GREP_OPTIONS='--color=auto'
bindkey '^R' history-incremental-search-backward
#
# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=3000
SAVEHIST=10000 # nice for logging
setopt extended_history
setopt share_history
function history-all { history -E 1 }
# xmodmap $HOME/.Xmodmap

set -o vi

. $HOME/bin/z/z.sh
function precmd () {
	_z --add "$(pwd -P)"
}

eval "$(rbenv init -)"

export LSCOLORS="Bxfxcxdxbxegedabagacad"
