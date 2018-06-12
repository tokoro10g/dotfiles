nnoremap <silent> zn :<C-u>Denite file/rec<CR>
nnoremap <silent> zm :<C-u>Denite file_mru buffer<CR>

call denite#custom#map('insert', '<C-p>', '<C-t>')
call denite#custom#map('insert', '<C-n>', '<C-g>')
