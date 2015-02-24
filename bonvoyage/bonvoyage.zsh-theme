### vim:ft=zsh fenc=utf-8

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}[add]"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}[mod]"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}[del]"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}[ren]"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}[unmerge]"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}[untrack]"

# for superuser
if [ ${UID} -eq 0 ]; then; NCOLOR="red"; else NCOLOR="green"; fi

PROMPT='%{$fg[$NCOLOR]%}[%n]%{$reset_color%} %# '
RPS1='%{$fg_bold[grey]%}%2~%{$reset_color%}$(git_prompt_info)$(git_prompt_status) %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}⎇ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" "

## file color
export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
if [ -n "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

