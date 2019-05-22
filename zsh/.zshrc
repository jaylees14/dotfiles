export ZSH=/Users/jay/.oh-my-zsh
export GOPATH=$HOME/go

ZSH_THEME="agnoster-light"
plugins=(git osx web-search)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias todo="todolist"
alias today="icalbuddy -eep 'notes,url' -b '' -nc eventsToday+1"
alias github="open 'https://github.com'"
alias gitviz="git log --graph --full-history --all --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"
alias vim=nvim
