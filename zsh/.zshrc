source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

export EDITOR=vim
export VISUAL=vim

alias vi=nvim
alias vim=nvim

alias vlog="vim $HOME/notes/_daily/$(date +'%Y')-$(date +'%m').md"
alias meet="vim $HOME/notes/_meetings"
function notes { grep -r -E $1 $HOME/notes; }
