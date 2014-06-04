### vim:ft=zsh fenc=utf-8

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}A"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?"

# for superuser
if [ ${UID} -eq 0 ]; then; NCOLOR="red"; else NCOLOR="green"; fi

PROMPT='%{$fg_bold[$NCOLOR]%}[%n]%{$reset_color%} %# '
RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}⎇ %{$reset_color%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$(git_prompt_status)"

