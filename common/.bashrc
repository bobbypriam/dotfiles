# import aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# import specific settings
if [ -f ~/.custom.bashrc ]; then
  . ~/.custom.bashrc
fi

# Colors
COLOREND="\[\e[00m\]"
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"

# Git branch
git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  branch="${ref#refs/heads/}"

  if [[ $(git status 2> /dev/null | tail -n1) == "nothing to commit, working directory clean" ]]; then
    echo " ${GREEN}$branch"
  else
    echo " ${RED}$branch"
  fi
}

prompt() {
  PS1="[ \w$(git_branch)${COLOREND} ] λ "
}

PROMPT_COMMAND=prompt