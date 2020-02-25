# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="sunrise"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
