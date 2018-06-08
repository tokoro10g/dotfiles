augroup mako_au
	autocmd!
	autocmd FileType mako let b:match_words = '<\(\w\w*\):</\1,{:}'
augroup END
