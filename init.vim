set hlsearch
set incsearch
set nu
set rnu
set ignorecase
set smartcase
set timeoutlen=1000

let mapleader = " "
noremap <C-h> ^
noremap <C-l> $
noremap <C-j> 10j
noremap <C-k> 10k
noremap ; :
noremap : ;
noremap <Tab> /\v
noremap <S-Tab> ?\v

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

nnoremap <silent> <ESC> :noh<CR>
nnoremap <leader>s :%s/\v
nnoremap x "_x
nnoremap c "_c
nnoremap C "_C
nnoremap <leader>d "_d
nnoremap <leader>D "_D
nnoremap <silent> <leader>ta :tabo<CR>

xnoremap <leader>s :s/\v
xnoremap y y`>
xnoremap x "_x
xnoremap c "_c
xnoremap C "_C
xnoremap <leader>d "_d
xnoremap <leader>D "_D
