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

set rulerformat=%10(%l/%L\ %p%%%)

" set leader key
let mapleader = ' '

" switch between tabs
noremap <leader>t gt
noremap <leader>T gT

" user defined command, must begin with upper case
command T below terminal
command TN tabnew
