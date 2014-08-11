# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster_molokai"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"

# Red dots are displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Show the command execution time stamp 
HIST_STAMPS="mm/dd/yyyy"

# Load plugins
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration
alias zshconfig="vim ~/.zshrc"
alias open="xdg-open"
alias :q="exit"

export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$PATH
export EDITOR='vim'
export KIGITHUB=https://github.com/KiCad

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
