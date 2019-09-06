let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('LanguageClient', 'max_abbr_width', 0)
call deoplete#custom#source('LanguageClient', 'max_menu_width', 0)
call deoplete#custom#source('LanguageClient', 'min_pattern_length', 2)

"augroup deoplete
"    au!
"    au FileType cpp  let b:deoplete_disable_auto_complete = 1
"augroup end
