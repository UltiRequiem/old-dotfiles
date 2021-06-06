" This is not my normal config, these are just a few basic things that I would like to have everywhere.
" You can check all my config in https://github.com/UltiRequiem/UltiVim

" Needed
set nocompatible fileformat=unix 
syntax on

" Filetype
filetype plugin indent on

" Performance
set complete-=i lazyredraw ttyfast

" Indention
set autoindent expandtab smarttab shiftwidth=4 tabstop=4

" User Interface
set laststatus=2 ruler tabpagemax=20 number relativenumber noerrorbells mouse=a visualbell wildmode=longest,list,full wildmenu  

" Code Folding
set foldmethod=indent foldnestmax=3 nofoldenable 

" Search 
set hlsearch ignorecase incsearch smartcase

" Text Rendering
set display+=lastline encoding=utf-8 linebreak scrolloff=1 sidescrolloff=5 wrap

" Miscellaneous
set autoread backspace=indent,eol,start confirm formatoptions+=j hidden history=25 undolevels=25

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 12

let mapleader = " "
noremap <leader>e :Lex<CR>
