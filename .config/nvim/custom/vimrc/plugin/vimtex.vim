let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_matchparen_enabled=0

let g:vimtex_fold_enabled=1

let g:vimtex_compiler_latexmk = {
	\ 'backend' : 'nvim',
	\ 'background' : 1,
	\ 'build_dir' : '',
	\ 'callback' : 1,
	\ 'continuous' : 1,
	\ 'executable' : 'latexmk',
	\ 'options' : [
	\   '-verbose',
	\   '-file-line-error',
	\   '-synctex=1',
	\   '-interaction=nonstopmode'
	\ ],
\}

if !exists('g:deoplete#omni#input_patterns')
	let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
