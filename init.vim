call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
call plug#end()

color dracula
set termguicolors
set cursorcolumn
set cursorline
let loaded_netrwPlugin = 1 " disable netrw

" coc.nvim import
source ~/.vim/coc.vim
let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-snippets']
let g:coc_global_extensions += ['coc-json', 'coc-go', 'coc-vimlsp', 'coc-yaml', 'coc-protobuf', 'coc-sh']
let g:markdown_fenced_languages = ['vim', 'help']

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

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>l :NERDTreeFind<CR>
