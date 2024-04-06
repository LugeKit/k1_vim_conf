" Vim settings {{{
:language en
mapclear
set hlsearch
set incsearch
set nu
set rnu
set ignorecase
set smartcase
set updatetime=250
set timeoutlen=1000
set ttimeoutlen=100
set scrolloff=10
set backspace=indent,eol,start
filetype on
filetype plugin on
filetype indent on
syntax enable
let mapleader = " "
" }}}

source ~/.vim/func.vim

" Key mappings {{{
" Normal mappings
noremap <C-h> ^
noremap <C-l> $
noremap <C-j> 5j
noremap <C-k> 5k
noremap ; :
noremap : ;
nnoremap <silent> <leader>ta :tabo<CR>
nnoremap <silent> <leader>// :rightbelow vsplit $MYVIMRC<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
cnoremap <C-j> <Left>
cnoremap <C-k> <Right>
cnoremap <C-h> <S-Left>
cnoremap <C-l> <S-Right>
xnoremap y y`>

" ESC to switch off highlights
nnoremap <silent> <ESC> :noh<CR>

" Substitute enhancement
nnoremap <leader>s :%s/
xnoremap <leader>s :s/

nnoremap <leader>W :call ToggleWindowMode()<CR>

" }}}

" Register settings {{{
nnoremap x "_x
nnoremap c "_c
nnoremap C "_C
nnoremap <leader>d "_d
nnoremap <leader>D "_D
xnoremap x "_x
xnoremap c "_c
xnoremap C "_C
xnoremap <leader>d "_d
xnoremap <leader>D "_D
" }}}

" Parenthsis settings {{{
" s to surround things
" S to unsurround things
xnoremap s( <ESC>`>a)<ESC>`<i(<ESC>
xnoremap s" <ESC>`>a"<ESC>`<i"<ESC>
xnoremap s' <ESC>`>a'<ESC>`<i'<ESC>
xnoremap s[ <ESC>`>a]<ESC>`<i[<ESC>
xnoremap s< <ESC>`>a><ESC>`<i<<ESC>
nnoremap s( mpciw()<ESC>P`pl
nnoremap s" mpciw""<ESC>P`pl
nnoremap s' mpciw''<ESC>P`pl
nnoremap s[ mpciw[]<ESC>P`pl
nnoremap s< mpciw<><ESC>P`pl
nnoremap S( mpva(<ESC>`>x`<x`ph
nnoremap S" mpva"<ESC>`>x`<x`ph
nnoremap S' mpva'<ESC>`>x`<x`ph
nnoremap S[ mpva[<ESC>`>x`<x`ph
nnoremap S< mpva<<ESC>`>x`<x`ph
nnoremap S{ mpva{<ESC>`>x`<x`ph

if exists("&ide")
	call OperatorForNextTargetInIDE(["c", "d"], ["(", "<", "[", '"', "'", "{"])
else
	" Currently this part in ide has bugs"
	onoremap in( :<C-U>normal! f(vi(<CR>
	onoremap in< :<C-U>normal! f<vi<<CR>
	onoremap in[ :<C-U>normal! f[vi[<CR>
	onoremap in" :<C-U>normal! f"vi"<CR>
	onoremap in' :<C-U>normal! f'vi'<CR>
	onoremap in{ :<C-U>normal! f{vi{<CR>
endif

" }}}

" Vimscript file settings {{{
augroup filetype_vim
	autocmd!
	autocmd BufWritePost *vimrc :source <afile>
	autocmd FileType vim setlocal foldmethod=marker
augroup end
" }}}

" Jetbrains IDE settings {{{
if exists("&ide")
	set easymotion
	let g:EasyMotion_do_mapping = 0
	nmap f <Plug>(easymotion-bd-fl)
	omap f <Plug>(easymotion-bd-fl)
	vmap f <Plug>(easymotion-bd-fl)
	nmap <leader>j <Plug>(easymotion-j)
	nmap <leader>k <Plug>(easymotion-k)

	nmap <leader>ff <Action>(SearchEverywhere)
	nmap <leader>fs <Action>(FindInPath)
	nmap <leader>fd <Action>(GotoDeclaration)
	nmap <leader>fr <Action>(ShowUsages)
	nmap <leader>fi <Action>(GotoImplementation)
	nmap <leader>fI <Action>(GotoSuperMethod)
	nmap <leader>fD <Action>(GotoTypeDeclaration)
	nmap <leader>gb <Action>(Annotate)
	nmap <leader>gu <Action>(Vcs.RollbackChangedLines)
	nmap <leader>gn <Action>(VcsShowNextChangeMarker)
	nmap <leader>gN <Action>(VcsShowPrevChangeMarker)
	nmap <leader>l <Action>(SelectInProjectView)
	nmap <leader>rn <Action>(RenameElement)
	nmap <leader>ca <Action>(ShowIntentionActions)
	nmap <leader>ta <Action>(CloseAllEditorsButActive)
	nmap <C-]> <Action>(NextTab)
	nmap <C-[> <Action>(PreviousTab)
	imap <C-i> <Action>(ParameterInfo)

	command! GT action RunClass
	command! GB action Annotate
endif
" }}}


