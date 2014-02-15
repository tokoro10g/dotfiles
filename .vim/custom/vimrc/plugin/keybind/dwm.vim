" dwm.vim
nnoremap <silent> <M-@> :call DWM_Focus()<CR>
nnoremap <silent> <M-,> :call DWM_Rotate(1)<CR>
nnoremap <silent> <M-.> :call DWM_Rotate(0)<CR>
nnoremap <silent> <M-l> :call DWM_GrowMaster()<CR>
nnoremap <silent> <M-h> :call DWM_ShrinkMaster()<CR>
nnoremap <silent> <M-n> :call DWM_New()<CR>
nnoremap <silent> <M-c> :call DWM_Close()<CR>
nnoremap <silent> <M-j> <C-w>w
nnoremap <silent> <M-k> <C-w>W
nnoremap <silent> <M--> :call DWM_mod_align()<CR>
function! DWM_mod_align()
	" resize the width of mainbuffer to 3/4 of the full window
	execute "1wincmd w"
	execute "vertical resize ".(&columns*3)/4
endfunction


