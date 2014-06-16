# Fino theme by Max Masnick (http://max.masnick.me)

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '%{$fg[red]%}±' && return
    echo '%{$fg[red]%}❤ '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function hg_prompt_info {

#    $OH_MY_ZSH_HG prompt --angle-brackets "\
#< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
#< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
#%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
#patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'


PROMPT="
%{$FG[027]%}%n%{$reset_color%} %{$FG[118]%}at%{$reset_color%} %{$terminfo[bold]$FG[202]%}$(box_name)%{$reset_color%} %{$terminfo[bold]$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[135]%}${current_dir}%{$reset_color%}${parse_special}${git_info} %{$FG[239]%}
$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[184]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[196]%} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"

local return_status=""
RPROMPT='${return_status}%{$reset_color%}'
