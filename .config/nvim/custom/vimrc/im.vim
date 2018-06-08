let g:input_toggle = 1
function! Inactivate_Fcitx()
	let s:input_status = system("fcitx-remote")
	if s:input_status == 2
		let g:input_toggle = 1
		let l:a = system("fcitx-remote -c")
	endif
endfunction

function! Activate_Fcitx()
	let s:input_status = system("fcitx-remote")
	if s:input_status != 2 && g:input_toggle == 1
		let l:a = system("fcitx-remote -o")
		let g:input_toggle = 0
	endif
endfunction

set ttimeoutlen=150
augroup fcitx
	autocmd!
	autocmd InsertLeave * call Inactivate_Fcitx()
	autocmd InsertEnter * call Activate_Fcitx()
augroup END
