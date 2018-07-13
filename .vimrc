"define our leader
let mapleader=" "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Plugins / Config 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

" Configure ;ne to switch to NERDTree
nmap <leader>ne :NERDTreeToggle<cr>

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'bling/vim-airline'

Plugin 'dzeban/vim-log-syntax'

set noshowmode

" Show tabs
let g:airline#extensions#tabline#enabled = 1

" Support powerline fonts
let g:airline_powerline_fonts = 1

" Support for typescript
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Basic VIM config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" Set spelling check language
set spelllang=en

" Enable/Disable spell check
nmap <silent> <leader>z :set spell!<cr>

" ZSH like autocomplete
set wildmenu
set wildmode=full

" Remap Up/Down to <C-p>/<C-m> so we don't have to take our hands of the KB +
" filtering
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" quick quit
nmap <silent> <leader>q :q<CR>

" MacVim/GVim specific options
if has("gui_running")

    " Use patch powerline fonts
    set guifont=Source\ Code\ Pro\ for\ Powerline:h13

    " Set the colorscheme
    colorscheme murphy

    " Remove right hand scroll bar
    set guioptions = "gmL"
endif
