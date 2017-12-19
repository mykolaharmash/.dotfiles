syntax on
set nopaste
set shell=/bin/sh
set encoding=utf-8
set number
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set cursorline
set textwidth=120
set colorcolumn=+1
set autoindent
set smartindent

" autoread files when they changed on disk
set autoread

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
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ayu-theme/ayu-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'terryma/vim-smooth-scroll'
NeoBundle 'bling/vim-airline'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'groenewege/vim-less'
NeoBundle 'elzr/vim-json'
NeoBundle 'mxw/vim-jsx'

NeoBundle 'honza/vim-snippets'
NeoBundle 'SirVer/ultisnips'

NeoBundle 'vim-scripts/nginx.vim'
NeoBundle 'othree/yajs.vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Shougo/unite.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------"

call unite#custom#source('file,file/new,buffer,file_rec', 'matchers', 'matcher_fuzzy')
call unite#filters#sorter_default#use(['sorter_rank'])

let mapleader = ","
let NERDTreeShowHidden = 1
let g:vim_json_syntax_conceal = 0

nmap <space> za

map <Leader>n :NERDTreeToggle<CR>
map <C-p> :Unite file_rec<CR>
map <C-o> :Unite buffer<CR>

set termguicolors
set background=light
let ayucolor='light'


colorscheme ayu

set wildignore+=*/.git/**
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**
set wildignore+=*/.bower/**

let g:indent_guides_guide_size = 1
" let g:indent_guides_enable_on_vim_startup = 1


highlight ExtraWhitespace ctermbg=red
highlight clear SignColumn

noremap <silent> <c-u> :call smooth_scroll#up(10, 0, 4)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(10, 0, 4)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
nnoremap <CR> :nohlsearch<CR><CR>

" Change cursor shape in different modes (Tmux + iTerm2,
" for more - http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes)
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

set diffopt+=vertical
let g:jsx_ext_required = 0
