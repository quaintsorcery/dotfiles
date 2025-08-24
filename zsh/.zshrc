export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$ZSH/oh-my-zsh.sh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:$PATH"

alias ll='ls -ahil'
alias pacman='sudo pacman'

