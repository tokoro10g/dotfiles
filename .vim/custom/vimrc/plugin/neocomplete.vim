" neocomplete
if neobundle#is_sourced("neocomplete")
	let g:neocomplete#enable_at_startup=1
	let g:neocomplete#enable_smart_case=1
	let g:neocomplete#enable_camel_case=1
	let g:neocomplete#enable_fuzzy_completion=1

	let g:neocomplete#use_vimproc=1
	let g:neocomplete#sources#syntax#min_keyword_length=2
	let g:neocomplete#sources#syntax#min_syntax_length=2
	let g:neocomplete#lock_buffer_name_pattern='\*ku\*'
	let g:neocomplete#sources#dictionary#dictionaries={
				\ 'default' : '',
				\ 'vimshell' : $HOME.'/.vimshell_hist'
				\ }
	let g:neocomplete#force_overwrite_completefunc=1
	if !exists('g:neocomplete#force_omni_input_patterns')
		let g:neocomplete#force_omni_input_patterns={}
	endif
	let g:neocomplete#force_omni_input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'
	let g:neocomplete#force_omni_input_patterns.php='[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplete#force_omni_input_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)'
	let g:neocomplete#force_omni_input_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
	let g:neocomplete#force_omni_input_patterns.python='\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

	if !exists('g:neocomplete#sources#omni#functions')
		let g:neocomplete#sources#omni#functions={}
	endif
	let g:neocomplete#sources#omni#functions.ruby='rubycomplete#Complete'
	let g:neocomplete#sources#omni#functions.eruby='rubycomplete#Complete'

	if !exists('g:neocomplete#sources#omni#input_patterns')
		let g:neocomplete#sources#omni#input_patterns={}
	endif
	let g:neocomplete#sources#omni#input_patterns.ruby='[^. *\t]\.\h\w*\|\h\w*::'
	let g:neocomplete#sources#omni#input_patterns.eruby='[^. *\t]\.\h\w*\|\h\w*::'

	if !exists('g:neocomplete#keyword_patterns')
		let g:neocomplete#keyword_patterns={}
	endif
	let g:neocomplete#keyword_patterns['default']='\h\w*'
endif
