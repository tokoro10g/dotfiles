nnoremap <silent> zn :<C-u>Denite file/rec file_mru buffer<CR>

call denite#custom#map('insert', '<C-p>', '<C-t>')
call denite#custom#map('insert', '<C-n>', '<C-g>')
