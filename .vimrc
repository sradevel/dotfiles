" my vimrc
"
" Setup Vundle:
" install the vundle plugin manually.
" https://github.com/gmarik/vundle
" To install vundle, copy all the files from the repo into your respective
" folders within ~/.vim
set nocompatible " Fuck VI... That's for grandpas.
filetype off

set clipboard=unnamed

set nobackup
set nowritebackup
set noswapfile

set backspace=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" https://github.com/flazz/vim-colorschemes#current-colorschemes
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.
set number
"set termguicolors " dont inherit terminal colors
set noerrorbells visualbell t_vb=
set softtabstop=4
"colorscheme solarized8_dark_high

" highlight current Cursorline Number only
set cursorline
hi clear CursorLine
hi CursorLineNr ctermbg=black
