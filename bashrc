# Prompt goodness
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function custom_prompt {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local 	     CYAN="\[\033[0;36m\]"
  local 	   PURPLE="\[\033[0;35m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

  PS1="\n${TITLEBAR}$CYAN\w$GREEN \$(parse_git_branch)$GREEN\n\$ $LIGHT_GRAY"
  PS2='> '
  PS4='+ '
}
custom_prompt

# Environment variables
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/usr/local/share/npm/bin:$HOME/bin:$PATH
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Init rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Aliases
alias be='bundle exec'
