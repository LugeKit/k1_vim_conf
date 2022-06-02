" line
set nu
set rnu

" search config
set ignorecase
" not ignore case when there is a higher case
set smartcase

mapclear
imapclear

map <C-k> <C-u>
map <C-j> <C-d>
map - 0
map = $

vnoremap ' c'<ESC>pe
vnoremap " c"<ESC>pe
vnoremap ( c(<ESC>pe
vnoremap [ c[<ESC>pe
vnoremap { c{<ESC>pe

nnoremap <leader>si :source ~/.ideavimrc<CR>
