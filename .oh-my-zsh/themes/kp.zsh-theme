function prompt_char {
    echo '%{$fg[red]%}❤ '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local current_dir='${PWD/#$HOME/~}'

PROMPT="
%{$FG[027]%}%n%{$reset_color%} %{$FG[118]%}at%{$reset_color%} %{$terminfo[bold]$FG[202]%}$(box_name)%{$reset_color%} %{$terminfo[bold]$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[135]%}${current_dir}%{$reset_color%}${parse_special}${git_info} %{$FG[239]%}
$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[184]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[196]%} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"

local return_status=""
RPROMPT='${return_status}%{$reset_color%}'
