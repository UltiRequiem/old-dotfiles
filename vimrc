" This is not my normal config, you can check all my config in https://github.com/UltiRequiem/UltiVim.

set nocompatible fileformat=unix 
syntax enable
set encoding=utf-8

" Filetype
filetype plugin indent on

set mouse+=a

" Performance
set complete-=i lazyredraw ttyfast

set background=light

" Indention
set autoindent expandtab smarttab shiftwidth=4 tabstop=4

" User Interface
set laststatus=2 ruler tabpagemax=20 number relativenumber noerrorbells mouse=a visualbell wildmode=longest,list,full wildmenu  

" Code Folding
set foldmethod=indent foldnestmax=3 nofoldenable 

" Search 
set hlsearch ignorecase incsearch smartcase

" Text Rendering
set display+=lastline encoding=utf-8 linebreak scrolloff=1 sidescrolloff=5 nowrap

" Miscellaneous
set autoread backspace=indent,eol,start confirm formatoptions+=j hidden history=25 undolevels=25

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 12

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
