" This is not my normal config, these are just a few basic things that I would like to have everywhere.
" You can check all my config in https://github.com/UltiRequiem/UltiVim

set nocompatible
syntax on

" Filetype
filetype plugin indent on

" Performance
set complete-=i lazyredraw

" Indention
set autoindent expandtab smarttab shiftwidth=4 tabstop=4

" User Interface
set laststatus=2 ruler wildmenu tabpagemax=20 number relativenumber noerrorbells mouse=a visualbell

" Code Folding
set foldmethod=indent foldnestmax=3 nofoldenable 

" Search 
set hlsearch ignorecase incsearch smartcase

" Text Rendering
set display+=lastline encoding=utf-8 linebreak scrolloff=1 sidescrolloff=5 wrap

" Miscellaneous
set autoread backspace=indent,eol,start confirm formatoptions+=j hidden history=25
