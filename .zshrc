# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="ys"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"

# Red dots are displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Show the command execution time stamp 
HIST_STAMPS="mm/dd/yyyy"

# Load plugins
plugins=(git vi-mode compleat command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration
alias zshconfig="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias open="xdg-open"
alias dmesg="dmesg --color=always"
alias lm="latexmk -pvc -halt-on-error"
alias adb="sudo adb"
alias nq="nvim-qt --no-ext-tabline"
alias :q="exit"

export TERM=xterm-color
export GOPATH=$HOME/dev/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.npm/bin:$PATH
export EDITOR='vim'
export KIGITHUB=https://github.com/KiCad
export BAT_THEME=Gruvbox

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
