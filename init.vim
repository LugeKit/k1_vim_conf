call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax on

" line number
set nu
set rnu

" tab settings
set ts=4
set sw=4

" case settings, ignore case only all lower case
set ignorecase
set smartcase

" set leader key
let mapleader = ' '

" switch between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>t gt
noremap <leader>T gT

" user defined command, must begin with upper case
command T below terminal
command TN tabnew

" coc.nvim import
source ~/.vim/coc.vim
