"""""""""""""""
" key mapping "
"""""""""""""""

" useful when moving between long wrapped lines
nnoremap j gj
nnoremap k gk

" alias for Esc
inoremap jj <Esc>

" select between double-quotations
nnoremap m" va"

" cd to the directory of current file
nnoremap cd :cd %:p:h<CR>:pwd<CR>

" automatically escape / and ? in command mode
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" vv to select to the end of line
vnoremap v $h
