" General Settings
syntax on
set autoindent
set autoread
set backspace=indent,eol,start
set cmdheight=1
set completeopt-=preview
set encoding=UTF-8
set expandtab
set formatoptions=tcqronj
set hlsearch
set list
set listchars=tab:\|\ ,trail:▫
set nospell
set noswapfile
set noerrorbells
set novisualbell
set number
set relativenumber
set ruler
set smartindent
set shiftwidth=2
set spell spelllang=en_gb
set softtabstop=2
set tabstop=2
set ttimeoutlen=0
set title
set updatetime=100
set wrap

let mapleader = ','

" Use relative numbers in normal mode, absolute in normal mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" https://stackoverflow.com/questions/6488683/how-do-i-change-the-vim-cursor-in-insert-normal-mode
let &t_SI = "\e[6 q" "Insert mode
let &t_EI = "\e[2 q" "Normal mode

augroup curse
  au!
  autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
