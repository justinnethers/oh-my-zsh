if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="red"; fi
local return_code="%(?..%{$terminfo[bold]$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$terminfo[bold]$fg[$NCOLOR]%}%n%{$reset_color%}@%{$terminfo[bold]$fg[blue]%}%m\
%{$reset_color%} : %{$fg[white]%}%~\
$(git_prompt_info) \
%{$terminfo[bold]$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg[magenta]%} ("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$terminfo[bold]$fg[green]%} ○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$terminfo[bold]$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$terminfo[bold]$fg[magenta]%})%{$reset_color%}"
