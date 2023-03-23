set nocompatible " not compatible with vi, must be set at very start

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
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
call plug#end()

set wildmenu
set termguicolors
set mouse=a
set autoread " auto reload which git checkout

let loaded_netrwPlugin = 1 " disable netrw
let g:dracula_italic = 0
colorscheme dracula

" coc.nvim import
let g:coc_global_extensions = []
let g:coc_global_extensions += ['coc-snippets']
let g:coc_global_extensions += ['coc-json', 'coc-go', 'coc-vimlsp', 'coc-yaml', 'coc-protobuf', 'coc-sh']
let g:coc_global_extensions += ['coc-docker', 'coc-tsserver', 'coc-html', 'coc-pyright', 'coc-highlight']
let g:markdown_fenced_languages = ['vim', 'help']
source ~/.vim/coc.vim

" NERDTree options
let NERDTreeCustomOpenArgs={'file': {'reuse': 'all', 'where': 't'}}

" status line
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'

" fzf preview
let g:fzf_preview_lines_command = 'bat --color=always --number'

" vim-go disable some settings which is conflict to coc-go
let g:go_def_mapping_enabled = 0
let g:go_imports_autosave = 0
let g:go_fmt_autosave = 0
let g:go_updatetime = 200
let g:go_auto_sameids = 0
let g:go_auto_type_info = 1
let g:go_code_completion_enabled = 0
let g:go_gopls_enabled = 1
let g:go_doc_keywordprg_enabled = 0
" highlights
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_operators = 1
let g:go_highlight_format_strings = 1


" line number
set nu
set rnu

" tab settings
set ts=4
set sw=4

" case settings, ignore case only all lower case
set smartcase
source ~/.vim/key_mappings.vim
