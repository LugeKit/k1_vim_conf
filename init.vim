set hlsearch
set incsearch
set rnu
set ignorecase
set smartcase
set timeoutlen=100

let mapleader = ' '
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
inoremap <C-j> <Up>
inoremap <C-k> <Down>

nnoremap <silent> <ESC> :noh<CR>
nnoremap <leader>s :%s/\v
nnoremap x "_x
nnoremap c "_c
nnoremap C "_C
nnoremap d "_d
nnoremap D "_D
nnoremap <leader>d d
nnoremap <leader>D D

xnoremap <leader>s :s/\v
xnoremap y y`>
xnoremap x "_x
xnoremap c "_c
xnoremap C "_C
xnoremap d "_d
xnoremap D "_D
xnoremap <leader>d d
xnoremap <leader>D D
