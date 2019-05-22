" ------------------------ 
" Plugins 
" ------------------------
call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" ------------------------
" General Settings
" ------------------------
syntax on
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamedplus
set completeopt-=preview
set encoding=utf-8
set expandtab
set formatoptions=tcqronj
set list
set listchars=tab:\|\ ,trail:▫
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
set relativenumber
set ruler
set smartindent
set softtabstop=2
set tabstop=2
set title
set updatetime=100

let mapleader = ','

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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
set background=dark
colorscheme one
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" ------------------------
" Plugin: deoplete
" ------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $HOME.'/go/bin/gocode'
let g:deoplete#sources#go#source_importer = 1

call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'auto_refresh_delay': 10,
\})

" ------------------------
" Plugin: FZF
" ------------------------
nnoremap <c-p> :FZF<cr>

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

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"
