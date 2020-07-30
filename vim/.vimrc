" ------------------------
" Configure Vundle
" ------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" ------------------------
" Plugins
" ------------------------
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mcmartelle/vim-monokai-bold'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
filetype plugin indent on

" ------------------------
" General Settings
" ------------------------
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

" ------------------------
" General Key Bindings
" ------------------------
imap     jk        <Esc>
nnoremap tl        :tabnext<CR>
nnoremap th        :tabprev<CR>
nnoremap tt        :tabedit<Space>
nnoremap tn        :tabnew<Space>
nnoremap tm        :tabm<Space>
nnoremap td        :tabclose<CR>
nnoremap <space>   zz
map      <leader>c :nohlsearch<cr>

" ------------------------
" Colors
" ------------------------
set termguicolors
colorscheme monokai-bold
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" ------------------------
" Plugin: NerdTree
" ------------------------
map \\ :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers = 0

" ------------------------
" Plugin: vim-airline
" ------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'

" ------------------------
" Language: Golang
" ------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

