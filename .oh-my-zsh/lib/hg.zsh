# Put this file in ~/.oh-my-zsh/lib/
# Original download from https://github.com/AlexSatrapa/oh-my-zsh/blob/master/lib/hg.zsh
# Added: test if .hg is a directory before hg reponsitory commands
# Get the name of the branch we are on
function hg_prompt_info() {
ref=$( [ -d .hg ] && hg branch 2> /dev/null) || return
echo "$ZSH_THEME_HG_PROMPT_PREFIX${ref}$(parse_hg_dirty)$ZSH_THEME_HG_PROMPT_SUFFIX"
}

parse_hg_dirty () {
if [[ -n $( [ -d .hg ] && hg status 2> /dev/null) ]]; then
echo "$ZSH_THEME_HG_PROMPT_DIRTY"
else
echo "$ZSH_THEME_HG_PROMPT_CLEAN"
fi
}

# get the status of the working tree
hg_prompt_status() {
INDEX=$( [ -d .hg ] && hg status 2> /dev/null)
STATUS=""
if $(echo "$INDEX" | grep '^? ' &> /dev/null); then
STATUS="$ZSH_THEME_HG_PROMPT_UNTRACKED$STATUS"
fi
if $(echo "$INDEX" | grep '^A ' &> /dev/null); then
STATUS="$ZSH_THEME_HG_PROMPT_ADDED$STATUS"
fi
if $(echo "$INDEX" | grep '^M ' &> /dev/null); then
STATUS="$ZSH_THEME_HG_PROMPT_MODIFIED$STATUS"
fi
if $(echo "$INDEX" | grep '^R ' &> /dev/null); then
STATUS="$ZSH_THEME_HG_PROMPT_DELETED$STATUS"
fi
echo $STATUS
}


