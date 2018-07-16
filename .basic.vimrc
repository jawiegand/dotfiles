" Basic VIM config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" be iMproved, required
set nocompatible

"define our leader
let mapleader=" "

" Gutter numbers
set number relativenumber

" Make backspace work
set backspace=indent,eol,start

" 4 spaces per tab
set tabstop=4

" Indenting use 4 spaces
set shiftwidth=4

" Use spaces not tabs
set expandtab

" Detect filetypes, load any plugins, indent correctly
filetype plugin indent on

" Syntax highlighting on
syntax on

" Set spelling check language
set spelllang=en

" ZSH like autocomplete
set wildmenu
set wildmode=full

" blink not beep
set visualbell

" highlight next match on search
set incsearch

" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Easy buffer navigation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> <leader>d :bdelete<CR>

" Window management

" Splits
nnoremap <leader>s <C-w>s
nnoremap <leader>v <C-w>v

" Navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>w <C-w>w

" Close
nnoremap <leader>c <C-w>c
nnoremap <leader>o <C-w>o

" Resize/Move
nnoremap <leader>_ <C-w>_   " Minimize
nnoremap <leader>- <C-w>|   " Maximize

" Copy/Paste
noremap <silent> <leader>y :'<,'>y*<CR>
noremap <silent> <leader>Y :.y*<CR>
noremap <silent> <leader>C :%y*<CR>
noremap <silent> <leader>p :pu*<CR>

" Enable/Disable spell check
nmap <silent> <leader>z :set spell!<cr>


" Remap Up/Down to <C-p>/<C-m> so we don't have to take our hands of the KB +
" filtering
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" quick quit
nmap <silent> <leader>q :q<CR>
