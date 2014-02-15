" vimshell
nnoremap <silent> vs :VimShellPop<CR>
au FileType vimshell call s:vimshell_keybind()
function! s:vimshell_keybind()
	nmap <Esc> q
	imap <Esc><Esc> <Esc>q
endfunction
if(has("gui_running"))
	nmap <C-z> :VimShellPop<CR>
endif

