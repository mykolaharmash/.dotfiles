syntax on
set background=light
set encoding=utf-8
set cursorline
set autoread
set hlsearch
set gdefault
set ignorecase
set incsearch
set showmatch
set nobackup
set noswapfile
set number

set pastetoggle=<leader>p

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'

call plug#end()

set termguicolors
let ayucolor="light"
colorscheme ayu
highlight LineNr ctermfg=grey

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
