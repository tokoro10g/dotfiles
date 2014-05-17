if exists(neocomplcache#close_popup)
	inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
endif
