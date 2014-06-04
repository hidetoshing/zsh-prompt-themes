### vim:ft=zsh fenc=utf-8
case ${uid} in
	0)
		PROMPT='%{$fg_bold[red]%}[%n]%{$reset_color%} %# '
		;;
	*)
		PROMPT='%{$fg_bold[green]%}[%n]%{$reset_color%} %# '
		;;
esac

RPS1='%{$fg[white]%}%2~$(git_prompt_info) %{$fg_bold[blue]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} [dirty]%{$fg[yellow]%}"

