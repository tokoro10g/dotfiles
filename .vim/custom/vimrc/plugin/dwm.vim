let g:dwm_map_keys=0
let g:dwm_master_pane_width=(&columns*3)/4

"augroup dwm_au
"	autocmd!
"	autocmd VimResized * :call s:DWM_mod_align()
"augroup END
"
"function! s:DWM_mod_align()
"	let g:dwm_master_pane_width=(&columns*3)/4
"	call DWM_Focus()
"	call DWM_ResizeMasterPaneWidth()
"	call DWM_Focus()
"endfunction
