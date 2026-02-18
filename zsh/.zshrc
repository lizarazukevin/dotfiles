# ZINIT Bootstrap for plugin lightweight zsh plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"

# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Better history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Welcom prompt
eval "$(oh-my-posh init zsh --config ~/dotfiles/zsh/themes/emodipt-extend.omp.json)"

echo
fastfetch
echo

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
