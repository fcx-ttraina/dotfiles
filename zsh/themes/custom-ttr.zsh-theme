function get_date() {
  DATE=$(TZ='Europe/Paris' date +' %H:%M')
  echo "%{$FG[130]%}[$DATE]%{$reset_color%}"
}

function get_user_host() {
  echo "%{$FG[141]%}%n%{$reset_color%}@%{$FG[164]%}%m%{$reset_color%}"
}

function get_current_dir() {
  echo "%B%{$FG[051]%}%c%{$reset_color%}%b"
}

function get_prompt() {
  echo "%(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )%{$reset_color%}"
}

PROMPT='$(get_date) $(get_user_host) $(git_prompt_info)
$(get_current_dir) $(get_prompt)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
