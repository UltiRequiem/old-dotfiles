set encoding=utf-8

set showmode    

syntax enable

filetype plugin indent on

set lazyredraw

set hidden     

set mouse=a  

set autoread     

set autoindent   

set smarttab expandtab 
set tabstop=2 shiftwidth=2 softtabstop=2

set history=1000 undolevels=1000 

set number relativenumber

set fileformat=unix   

set wildmode=longest,list,full wildmenu      

set completeopt=menu,menuone,longest
set cmdheight=1

set ignorecase smartcase 

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
set autochdir
map <C-E> :Lexplore<CR>
