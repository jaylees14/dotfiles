export ZSH=/Users/jay/.oh-my-zsh

ZSH_THEME="gitster"
plugins=(
  git
  osx
  web-search
  vi-mode
  z
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias todo="todolist"
alias today="icalbuddy -eep 'notes,url' -b '' -nc eventsToday+1"
alias github="open 'https://github.com'"
alias gitviz="git log --graph --full-history --all --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s'"
alias vim=nvim

# Enable Vim mode in zsh
bindkey -v
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-seach-backward

# updates editor information when keymap changes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
   echo -ne '\e[5 q'
}

bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Begin search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search


# Wait 0.1s to switch between modes
export KEYTIMEOUT=1
export GOPATH=$HOME/go
