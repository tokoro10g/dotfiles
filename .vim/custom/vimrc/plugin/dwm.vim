if has("gui_running")
	let g:dwm_map_keys=0
endif
let g:dwm_master_pane_width=(&columns*3)/4

augroup dwm_au
	autocmd!
	autocmd VimResized * :call DWM_mod_align()
augroup END

function! DWM_mod_align()
	let g:dwm_master_pane_width=(&columns*3)/4
	call DWM_Focus()
	call DWM_ResizeMasterPaneWidth()
	call DWM_Focus()
endfunction
