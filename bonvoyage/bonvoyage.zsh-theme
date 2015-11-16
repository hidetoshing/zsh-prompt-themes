### vim:ft=zsh

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
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:';
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
if [ -n "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

