"""""""""""""""
" key mapping "
"""""""""""""""

inoremap jj		 <Esc>

"nnoremap <silent> jtn		:tabnext<CR>
"nnoremap <silent> jtp		:tabprev<CR>
"nnoremap <silent> jtw		:tabnew<CR>
"inoremap <silent> jtn		<Esc>:tabnext<CR>i
"inoremap <silent> jtp		<Esc>:tabprev<CR>i
"inoremap <silent> jtw		<Esc>:tabnew<CR>

nnoremap jm		:<C-u>Unite build:!<CR>

" select between double-quotations
nnoremap <leader>" va"

nnoremap <silent> jf		:call Toggle_foldcolumn()<CR>
function! Toggle_foldcolumn()
	let state=&foldcolumn
	if state==0
		let &foldcolumn=g:foldcolumn_enabled_columns
	else
		let &foldcolumn=0
	endif
endfunction

nnoremap jo		:<C-u>Unite outline<CR>

" cd to the directory of current file
nnoremap cd :cd %:p:h<CR>:pwd<CR>
