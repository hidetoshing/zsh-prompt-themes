### vim:ft=zsh fenc=utf-8

# for superuser
if [ ${UID} -eq 0 ]; then; NCOLOR="red"; else NCOLOR="green"; fi

PROMPT='%{$fg_bold[$NCOLOR]%}[%n]%{$reset_color%} %# '
RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} [dirty]%{$fg[yellow]%}"

