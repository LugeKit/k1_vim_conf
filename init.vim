set nocompatible

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
call plug#end()

color molokai
set termguicolors
let loaded_netrwPlugin = 1 " disable netrw
set mouse=a

" coc.nvim import
let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-snippets']
let g:coc_global_extensions += ['coc-json', 'coc-go', 'coc-vimlsp', 'coc-yaml', 'coc-protobuf', 'coc-sh']
let g:coc_global_extensions += ['coc-docker', 'coc-tsserver', 'coc-html', 'coc-pyright']
let g:markdown_fenced_languages = ['vim', 'help']
source ~/.vim/coc.vim

" status line
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'

" fzf preview
let g:fzf_preview_lines_command = 'bat --color=always --number'

" line number
set nu
set rnu

" tab settings
set ts=4
set sw=4

" case settings, ignore case only all lower case
set smartcase
source ~/.vim/key_mappings.vim
