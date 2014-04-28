" GVim specific settings
if has("gui_running")
	set mouse=
	set guioptions=
else
	" Terminal-Vim specific settings
	set t_Co=256
endif

" Hotfix for non-POSIX shells
if $SHELL =~ 'bin/fish'
	set shell=/bin/sh
endif

" Use TMPDIR in home directory
let $TMPDIR = $HOME."/tmp"

" Common settings
filetype plugin on
filetype indent on

set laststatus=2
set showtabline=2
set backspace=2
set autoindent
set timeoutlen=200
set completeopt=menuone
set relativenumber
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch

set showmatch
set matchpairs& matchpairs+=<:>

set nowritebackup
set nobackup
set noswapfile

set list
set listchars=tab:>-,trail:-,nbsp:%,eol:$

set foldmethod=manual
let g:foldcolumn_enabled_columns=5
set fillchars=vert:\|

" Checking for typo.
autocmd BufWriteCmd *[,*] call s:write_check_typo(expand('<afile>'))
function! s:write_check_typo(file)
	let writecmd = 'write'.(v:cmdbang ? '!' : '').' '.a:file
	if exists('b:write_check_typo_nocheck')
		execute writecmd
		return
	endif
	let prompt = "possible typo: really want to write to '" . a:file . "'?(y/n):"
	let input = input(prompt)
	if input ==# 'YES'
		execute writecmd
		let b:write_check_typo_nocheck = 1
	elseif input =~? '^y\(es\)\=$'
		execute writecmd
	endif
endfunction

" fix for neosnippet
if has('conceal')
	set conceallevel=2 concealcursor=iv
endif
