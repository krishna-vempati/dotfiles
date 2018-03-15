export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
export ARCHFLAGS="-arch x86_64"

# Colours
BLACK='\e[0;30m'        # Black
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White

# Load in the git branch prompt script.
source ~/.git-prompt
export PS1="\[$CYAN\]\h \[$GREEN\]\t\[$YELLOW\]\w\[\033[m\]\[$RED\]\$(__git_ps1)\[$WHITE\]\$ "
export PATH=$HOME/.rbenv/bin:$HOME/bin:$PATH

# bash completion under osx
if [ "$(uname)" == "Darwin" ]; then
  export PATH=$PATH:/usr/local/opt/node@8/bin:/usr/local/opt/coreutils/bin:/usr/local/opt/findutils/libexec/gnubin
  export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
  if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
  fi
fi

export EDITOR=vim
set -o vi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

. ~/.bash_aliases
