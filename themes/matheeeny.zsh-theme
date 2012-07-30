# Yay! High voltage and arrows!



autoload -U add-zsh-hook

#PROMPT='%{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%} %{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$reset_color%}%{$PROMPT_PROMPT%}ᐅ%{$reset_color%} '

#RPS1="${return_code}"

export LSCOLORS=""

function hostname_if_remote() {
  if [ -n "${SSH_CLIENT+x}" ]; then
    echo "%{$fg[red]%}%m%{$reset_color%}:"
  fi
}

PROMPT='$(hostname_if_remote)%{$fg[cyan]%}%~%{$reset_color%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}%{$reset_color%}%{$fg[cyan]%}⇒%{$reset_color%} '

GIT_DIRTY_COLOR=$FG[160]
GIT_CLEAN_COLOR=$FG[082]
GIT_PROMPT_INFO=$FG[012]

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}|%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘ "
ZSH_THEME_GIT_PROMPT_CLEAN=" "

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"
