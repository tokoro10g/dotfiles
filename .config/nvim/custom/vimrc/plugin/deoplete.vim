let g:deoplete#enable_at_startup = 1

augroup deoplete
    au!
    au FileType cpp  let b:deoplete_disable_auto_complete = 1
augroup end
