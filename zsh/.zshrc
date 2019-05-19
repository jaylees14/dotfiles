export ZSH=/Users/jay/.oh-my-zsh

ZSH_THEME="agnoster-light"

plugins=(git osx web-search)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.z.sh

# Append python exes to path
export GOPATH=$HOME/go:$HOME/Documents/FictionRiot
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export PATH=$PATH:/Users/jay/.local/lib/aws/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/Users/Jay/Library/Android/sdk/tools
export PATH=$PATH:$HOME/.pdf/termpdf

alias todo="todolist"
alias today="icalbuddy -eep 'notes,url' -b '' -nc eventsToday+1"
alias github="open 'https://github.com'"
alias gitviz="git log --graph --full-history --all --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"

# Hub autocomplete support
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
