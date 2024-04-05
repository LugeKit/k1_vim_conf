function! CharAfterCursor()
	return strcharpart(getline('.'), strchars(strpart(getline('.'), 0, col('.')-1)) + 1, 1)
endfunction

" example: nnoremap cin" f"vi"c
function! OperatorForNextTargetInIDE(actions, targets)
	for action in a:actions
		for target in a:targets
			let map_key = action . "in" . target
			let map_action = "f" . target . "vi" . target . action
			execute 'nnoremap ' . l:map_key . ' ' . l:map_action
		endfor
	endfor
endfunction
