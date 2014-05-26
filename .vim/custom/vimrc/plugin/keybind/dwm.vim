" dwm.vim
nmap <M-@> <Plug>DWMFocus
nmap <M-,> <Plug>DWMRotateClockwise
nmap <M-.> <Plug>DWMRotateCounterclockwise
nmap <M-l> <Plug>DWMGrowMaster
nmap <M-h> <Plug>DWMShrinkMaster
nmap <M-n> <Plug>DWMNew
nmap <M-d> <Plug>DWMClose
nmap <M-j> <C-w>w
nmap <M-k> <C-w>W
nmap <M--> :call DWM_mod_align()<CR>
function! DWM_mod_align()
	" resize the width of mainbuffer to 3/4 of the full window
	execute "1wincmd w"
	execute "vertical resize ".(&columns*3)/4
endfunction


