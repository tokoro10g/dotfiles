" unite
"nnoremap <silent> zp :<C-u>Unite buffer_tab file_mru<CR>
"nnoremap <silent> zn :<C-u>Unite file buffer file/new<CR>
"nnoremap <silent> zd :<C-u>Unite dwm<CR>
"nnoremap <silent> mm :<C-u>Unite build:!<CR>
"nnoremap <silent> mo :<C-u>Unite outline<CR>
"
"augroup unite_au
"	autocmd!
"	autocmd FileType unite call s:unite_my_settings()
"augroup END
"
"function! s:unite_my_settings()
"	nnoremap <silent> <buffer> <expr> <C-O> unite#do_action('vimfiler')
"	inoremap <silent> <buffer> <expr> <C-O> unite#do_action('vimfiler')
"	nnoremap <silent> <buffer> <expr> <C-N> unite#do_action('dwm_new')
"	inoremap <silent> <buffer> <expr> <C-N> unite#do_action('dwm_new')
"	nmap <silent> <buffer> <ESC> q
"endfunction
"
