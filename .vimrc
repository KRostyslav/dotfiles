"" Created: 24.06.2020
" Setting on view
"=============================
map ; :

set number
syntax on
"syntax enable
set background=dark
"colorscheme solarized

set ruler
set mousehide
set autoindent
set wildmenu
set list
set listchars=tab:>-
set tabstop=4

call plug#begin('~/.vim/plugged')

"Plug 'preservim/NERDTree'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()

set laststatus=2
set t_Co=256
