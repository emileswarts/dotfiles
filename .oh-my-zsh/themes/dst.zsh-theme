
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg_bold[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='%(?, ,%{$fg_bold[red]%}FAIL%{$reset_color%}
)
%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[yellow]%}%m%{$reset_color%}: %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)
%_ $(prompt_char) '

RPROMPT='%{$fg_bold[green]%}[%*]%{$reset_color%}'
