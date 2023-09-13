[[ -f ~/.cache/znap/znap.zsh ]] ||
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.cache/znap
source ~/.cache/znap/znap.zsh

znap source marlonrichert/zsh-hist
znap source zsh-users/zsh-autosuggestions
znap source zdharma-continuum/fast-syntax-highlighting

plugins=(git vi-mode compleat command-not-found)

ZSH_THEME="ys"
znap source ohmyzsh/ohmyzsh lib/{git.zsh,theme-and-appearance.zsh}
znap source ohmyzsh/ohmyzsh oh-my-zsh.sh

# User configuration
if [ ! "$(uname)" = "Darwin" ]; then
  alias open="xdg-open"
fi
alias dmesg="dmesg --color=always"

export TERM=xterm-color
export GOPATH=$HOME/dev/go
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.npm/bin:$PATH
export EDITOR='vim'
export BAT_THEME=Gruvbox

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

