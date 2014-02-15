" unite
noremap zp :Unite buffer_tab file_mru<CR>
noremap zn :Unite file buffer file/new<CR>
noremap zd :Unite dwm<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
	nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
	inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
	nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
	inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
	nnoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
	inoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
	nnoremap <silent> <buffer> <expr> <C-O> unite#do_action('vimfiler')
	inoremap <silent> <buffer> <expr> <C-O> unite#do_action('vimfiler')
	nnoremap <silent> <buffer> <expr> <C-N> unite#do_action('dwm_new')
	inoremap <silent> <buffer> <expr> <C-N> unite#do_action('dwm_new')
	nmap <silent> <buffer> <ESC> q
endfunction

