call plug#begin('~/.vim/plugged')
" Themes
Plug 'mcmartelle/vim-monokai-bold'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'

" General Editor
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'jremmen/vim-ripgrep', { 'on': 'Rg' }

" Languages
Plug 'fatih/vim-go'
Plug 'octol/vim-cpp-enhanced-highlight'

" Lint, completion
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

source $HOME/.config/nvim/config.vim
source $HOME/.config/nvim/bindings.vim
source $HOME/.config/nvim/color.vim
source $HOME/.config/nvim/plugins.vim
