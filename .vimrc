"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible
set t_Co=256 "force 256 colors

"filetype plugin indent on  " Load plugins according to detected filetype.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"    Plugin 'neoclide/coc.nvim'
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'tmsvg/pear-tree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'bling/vim-bufferline'
call vundle#end()

syntax on                  " Enable syntax highlighting.

" Key bindings
let mapleader = ","        " Leader key is ,

" insert new line without INSERT mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Ctrl-l clears search
nnoremap <silent> <C-l> :nohl<CR><C-l>

filetype plugin indent on

let g:pear_tree_repeatable_expand =0 "dont need the dot command"

set background=dark
set clipboard=unnamed      " use system clipboard
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set nu rnu

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

"set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set nobackup
set nowritebackup
"set backupdir   =$HOME/.vim/files/backup/
"set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

" vim-airline config
let g:airline_theme = 'minimalist'
"let g:airline_powerline_fonts = 1
"
"coc.nvim
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=no
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:bufferline_echo = 0

let g:ycm_global_ycm_extra_conf = '$HOME/.vim/.ycm_extra_conf.py'
"source ~/.vimfiles/coc.vim
