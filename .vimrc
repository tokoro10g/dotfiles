""""""""""""""""""""""""""""""""
" .vimrc                       "
"         Tokoro (@tokoro10g)  "
""""""""""""""""""""""""""""""""

if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/

set encoding=utf-8

"""""""""""
" Bundles "
"""""""""""
" Using NeoBundle Environment

call neobundle#begin(expand('~/.vim/bundle/'))

"if neobundle#load_cache()
	" Bundles {{{
	
	" Shougo-Wares {{{
	NeoBundleFetch 'Shougo/neobundle.vim'
	
	NeoBundle 'Shougo/vimproc', {
				\ 'build' : {
				\ 'windows' : 'make -f make_mingw32.mak',
				\ 'cygwin' : 'make -f make_cygwin.mak',
				\ 'mac' : 'make -f make_mac.mak',
				\ 'unix' : 'make -f make_unix.mak',
				\ },
				\ }
	NeoBundle 'Shougo/vimshell'
	NeoBundle 'Shougo/vimfiler'
	if has('lua')
		NeoBundle 'Shougo/neocomplete'
	else
		NeoBundle 'Shougo/neocomplcache'
		NeoBundle 'JazzCore/neocomplcache-ultisnips'
	endif
	NeoBundle 'Shougo/neossh.vim'
	NeoBundle 'Shougo/context_filetype.vim'
	NeoBundle 'Shougo/vinarise.vim'
	" }}}

	" Unite {{{
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/unite-build'
	NeoBundle 'Shougo/unite-outline'
	NeoBundle 'Shougo/neomru.vim'
	NeoBundle 'Shougo/tabpagebuffer.vim'
	NeoBundle 'kannokanno/unite-dwm'
	NeoBundle 'osyo-manga/unite-quickfix'
	" }}}

	" Snippet {{{
	NeoBundle 'SirVer/ultisnips'
	NeoBundle 'honza/vim-snippets'
	" }}}

	" Syntax {{{
	NeoBundleLazy 'Rip-Rip/clang_complete', {
				\	'autoload': {
				\		'filetypes' : ["c","cpp"]
				\	},
				\	'build' : {
				\		'others' : "make",
				\	},
				\}
	NeoBundle 'davidhalter/jedi-vim'
	NeoBundleLazy 'plasticboy/vim-markdown', { 'autoload' : { 'filetypes' : ['mkd'] } }
	NeoBundleLazy 'PProvost/vim-markdown-jekyll', { 'autoload' : { 'filetypes' : ['mkd'] } }
	NeoBundleLazy 'vim-scripts/openscad.vim', { 'autoload' : { 'filetypes' : ['openscad'] } }
	NeoBundleLazy 'octave.vim--', {'autoload' : { 'filetypes' : ['octave'] } }
	" }}}

	" Motion {{{
	NeoBundle 'rhysd/clever-f.vim'
	NeoBundle 'kana/vim-textobj-user'
	NeoBundle 'kana/vim-textobj-indent'
	" }}}

	" Colorscheme
	NeoBundle 'morhetz/gruvbox'

	" Very Benry {{{
	NeoBundle 'sudo.vim'
	NeoBundle 'deton/jasegment.vim'
	NeoBundle 'spolu/dwm.vim'
	NeoBundle 'bling/vim-airline'
	NeoBundle 'vim-airline/vim-airline-themes'
	NeoBundle 'lilydjwg/colorizer'
	NeoBundle 'osyo-manga/vim-anzu'
	NeoBundle 'LeafCage/foldCC'
	NeoBundle 'osyo-manga/vim-precious'
	NeoBundle 'thinca/vim-quickrun'
	NeoBundle 'osyo-manga/vim-watchdogs'
	NeoBundle 'tpope/vim-fugitive'
	NeoBundle 'jmcantrell/vim-virtualenv'
	NeoBundle 'lervag/vimtex'
	NeoBundle 'LargeFile'
	NeoBundle 'tyru/eskk.vim'
	" }}}
	
	" Neta Plugins {{{
	"NeoBundleLazy 'supermomonga/shaberu.vim'
	"NeoBundle 'rbtnn/puyo.vim'
	"NeoBundle 'thinca/vim-portal'
	"NeoBundle 'boolfool/vim-sudden-death'
	" }}}
	
	" TweetVim {{{
	"NeoBundleLazy 'mattn/webapi-vim'
	"NeoBundleLazy 'basyura/twibill.vim'
	"NeoBundleLazy 'tyru/open-browser.vim'
	"NeoBundleLazy 'mattn/favstar-vim'
	"NeoBundleLazy 'basyura/TweetVim'
	"NeoBundle 'tokoro10g/vim-miscmisc'
	" }}}

	" }}}

	"NeoBundleSaveCache
"endif

call neobundle#end()

NeoBundleCheck

" Custom settings
set runtimepath+=~/.vim/custom
runtime! custom/vimrc/*.vim
runtime! custom/vimrc/plugin/*.vim
runtime! custom/vimrc/plugin/keybind/*.vim

" finally
syntax enable
