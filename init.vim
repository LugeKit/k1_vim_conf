set hlsearch
set incsearch
set nu
set rnu
set ignorecase
set smartcase
set updatetime=250
set timeoutlen=300
set scrolloff=10
set syntax=enable

let mapleader = " "

" Normal mappings
noremap <C-h> ^
noremap <C-l> $
noremap <C-j> 10j
noremap <C-k> 10k
noremap ; :
noremap : ;
nnoremap <silent> <leader>ta :tabo<CR>
nnoremap <silent> <leader>// :vsplit $MYVIMRC<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
xnoremap y y`>

" ESC to switch off highlights
nnoremap <silent> <ESC> :noh<CR>

" Substitute enhancement
nnoremap <leader>s :%s/
xnoremap <leader>s :s/

" Delete without save into register
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

" Parenthsis
xnoremap <leader>" <ESC>`<i"<ESC>`>la"<ESC> 
xnoremap <leader>' <ESC>`<i'<ESC>`>la'<ESC> 
xnoremap <leader>( <ESC>`<i(<ESC>`>la)<ESC> 
xnoremap <leader>{ <ESC>`<i{<ESC>`>la}<ESC> 
xnoremap <leader>[ <ESC>`<i[<ESC>`>la]<ESC> 
xnoremap <leader>< <ESC>`<i<<ESC>`>la><ESC> 
nnoremap <leader>da( <ESC>F(xf)x
nnoremap <leader>da" <ESC>F"xf"x
nnoremap <leader>da' <ESC>F'xf'x
nnoremap <leader>da[ <ESC>F[xf]x
nnoremap <leader>da< <ESC>F<xf>x

" Jetbrains IDE settings
if exists("&ide")
	set easymotion

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
	nmap gc <Action>(CommentByLineComment)
	nmap gC <Action>(CommentByBlockComment)
	nmap <leader>ta <Action>(CloseAllEditorsButActive)
	nmap <C-]> <Action>(NextTab)
	nmap <C-[> <Action>(PreviousTab)
	imap <C-i> <Action>(ParameterInfo)

	command! GT action RunClass
	command! GB action Annotate
endif

function! CharAfterCursor()
  return strcharpart(getline('.'), strchars(strpart(getline('.'), 0, col('.')-1)) + 1, 1)
endfunction
