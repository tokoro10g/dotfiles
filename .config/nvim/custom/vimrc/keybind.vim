"""""""""""""""
" key mapping "
"""""""""""""""

" useful when moving between long wrapped lines
nnoremap j gj
nnoremap k gk

" alias for Esc
inoremap jj <Esc>
inoremap っｊ <Esc>

" cd to the directory of current file
nnoremap cd :cd %:p:h<CR>:pwd<CR>

" vv to select to the end of line
vnoremap v $h
