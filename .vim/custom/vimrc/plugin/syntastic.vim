" Syntastic
if neobundle#tap('syntastic')
	let g:syntastic_mode_map = {
				\  'mode': 'active',
				\ 'active_filetypes': ['ruby', 'javascript', 'cpp'],
				\ 'passive_filetypes': []
				\ }
	let g:syntastic_enable_highlighting=1
	let g:syntastic_enable_signs=1
	let g:syntastic_auto_jump=1
	let g:syntastic_auto_loc_list=0
	let g:syntastic_always_populate_loc_list=1
	let g:syntastic_cpp_compiler="clang"

	call neobundle#untap()
endif
