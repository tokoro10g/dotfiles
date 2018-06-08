let g:eskk#large_dictionary = { 'path': "/usr/share/skk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#enable_completion = 1

augroup vimrc-eskk
	au!
	au User eskk-initialize-pre call s:eskk_initial_pre()
augroup END
function! s:eskk_initial_pre()
	let t = eskk#table#new('rom_to_hira*', 'rom_to_hira')
	call t.add_map(',', '，')
	call t.add_map('.', '．')
	call eskk#register_mode_table('hira', t)
	let t = eskk#table#new('rom_to_kata*', 'rom_to_kata')
	call t.add_map(',', '，')
	call t.add_map('.', '．')
	call eskk#register_mode_table('kata', t)
endfunction
