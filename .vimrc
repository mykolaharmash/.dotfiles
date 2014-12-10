syntax on;
set encoding=utf-8
set number
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set cursorline
set textwidth=80
set colorcolumn=+1
set autoindent
set smartindent

set hlsearch
set gdefault
set ignorecase
set incsearch

set showmatch

set backspace=indent,eol,start

set pastetoggle=<leader>p

set nobackup
set noswapfile

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/garmash/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/garmash/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'chriskempson/tomorrow-theme'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'terryma/vim-smooth-scroll'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'szw/vim-ctrlspace'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------"

let mapleader = ","
let g:ctrlp_extensions = ['funky']
let NERDTreeShowHidden=1

nmap <space> za

map <Leader>n :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
colorscheme Tomorrow-Night-Bright

highlight ExtraWhitespace ctermbg=red
highlight clear SignColumn

noremap <silent> <c-u> :call smooth_scroll#up(10, 0, 4)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(10, 0, 4)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
nnoremap <CR> :nohlsearch<CR><CR>
