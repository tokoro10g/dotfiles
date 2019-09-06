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

set noshowcmd
set noshowmode
set laststatus=2
set showtabline=2
set backspace=indent,eol,start
set autoindent smartindent

set cursorline
set number
set ttyfast " use fast terminal connection
set title
set shortmess& shortmess+=I " hide startup messages
set signcolumn=yes
set hidden

set timeoutlen=300
set updatetime=200
set completeopt=menuone,noinsert,noselect

set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase smartcase infercase
set incsearch
set hlsearch

"set showmatch
set matchpairs& matchpairs+=<:>

set nowritebackup
set nobackup

if !isdirectory($HOME.'/.vim/swap')
  call mkdir($HOME.'/.vim/swap', 'p')
endif
set directory=~/.vim/swap

if !isdirectory($HOME.'/.vim/undo')
	call mkdir($HOME.'/.vim/undo', 'p')
endif
set undodir=~/.vim/undo
set undofile

set list
set listchars=tab:>-,trail:-,nbsp:%,eol:$

set foldmethod=marker
set foldlevel=99
let g:foldcolumn_enabled_columns=5
set fillchars=vert:\|
set nofoldenable

" Checking for typo.
augroup checktypo
	autocmd!
	autocmd BufWriteCmd *[,*] call s:write_check_typo(expand('<afile>'))
augroup END

function! s:write_check_typo(file)
	let writecmd = 'write'.(v:cmdbang ? '!' : '').' '.a:file
	if exists('b:write_check_typo_nocheck')
		execute writecmd
		return
	endif
	let prompt = "Possibly typo: Do you want to write to '" . a:file . "'?(y/n):"
	let input = input(prompt)
	if input ==# 'YES'
		execute writecmd
		let b:write_check_typo_nocheck = 1
	elseif input =~? '^y\(es\)\=$'
		execute writecmd
	endif
endfunction

if has('conceal')
	set conceallevel=2 concealcursor=
	let g:tex_conceal = ""
endif

"set ambiwidth=double
