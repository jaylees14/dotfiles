set nocompatible
filetype off

" Vundle Config 
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'lervag/vimtex'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'fatih/vim-go'
call vundle#end()

filetype plugin indent on
syntax on
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set number
set background=dark
set termguicolors
set tabstop=2   
set shiftwidth=2
set expandtab

let g:airline_theme='wombat'
let NERDTreeShowLineNumbers=0
let vim_markdown_preview_github=1
let g:airline#extensions#tabline#enabled=1
colorscheme moonokai 

map      \\   :NERDTreeToggle<CR>
imap     jk   <Esc>
nnoremap tl   :tabnext<CR>
nnoremap th   :tabprev<CR>
nnoremap tt   :tabedit<Space>
nnoremap tn   :tabnew<Space>
nnoremap tm   :tabm<Space>
nnoremap td   :tabclose<CR>

autocmd Filetype tex setl updatetime=1
