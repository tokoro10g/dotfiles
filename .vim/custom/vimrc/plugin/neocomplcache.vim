" neocomplcache
if neobundle#tap('neocomplcache')
	let g:neocomplcache_enable_at_startup=1
	let g:neocomplcache_auto_completion_start_length=3
	let g:neocomplcache_min_keyword_length=2
	let g:neocomplcache_min_syntax_length=2
	let g:neocomplcache_max_list=1000
	let g:neocomplcache_force_overwrite_completefunc=1

	if !exists('g:neocomplcache_force_omni_patterns')
		let g:neocomplcache_force_omni_patterns={}
	endif
	let g:neocomplcache_force_omni_patterns.php='[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_force_omni_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)'
	let g:neocomplcache_force_omni_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

	if !exists('g:neocomplcache_keyword_patterns')
		let g:neocomplcache_keyword_patterns={}
	endif
	let g:neocomplcache_keyword_patterns['default']='\h\w*'

	call neobundle#untap()
endif
