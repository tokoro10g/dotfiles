augroup jedi_au
	autocmd!
	autocmd FileType python setlocal omnifunc=jedi#completions
augroup END
"let g:jedi#popup_select_first=0
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
