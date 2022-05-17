[[ -f ~/.cache/znap/znap.zsh ]] ||
  mkdir -p ~/.cache
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.cache/znap
source ~/.cache/znap/znap.zsh

znap source marlonrichert/zsh-hist
znap source zsh-users/zsh-autosuggestions
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

plugins=(git vi-mode compleat command-not-found)

znap source ohmyzsh/ohmyzsh oh-my-zsh.sh
znap prompt ohmyzsh/ohmyzsh ys

# User configuration
alias open="xdg-open"
alias dmesg="dmesg --color=always"

export TERM=xterm-color
export GOPATH=$HOME/dev/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.npm/bin:$PATH
export EDITOR='vim'
export BAT_THEME=Gruvbox

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

