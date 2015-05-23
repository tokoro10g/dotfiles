""""""""""""""""""""""""""""""""
" .vimrc                       "
"         Tokoro (@tokoro10g)  "
""""""""""""""""""""""""""""""""

if !1 | finish | endif

" Using NeoBundle Environment
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

if neobundle#load_cache()
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
	NeoBundleLazy 'Shougo/context_filetype.vim'
	" }}}

	" Unite {{{
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/unite-build'
	NeoBundle 'Shougo/unite-outline'
	NeoBundle 'kannokanno/unite-dwm'
	NeoBundle 'osyo-manga/unite-quickfix'
	" }}}

	" Snippet {{{
	NeoBundle 'SirVer/ultisnips'
	NeoBundle 'honza/vim-snippets'
	"NeoBundle 'Shougo/neosnippet.vim'
	"NeoBundle 'Shougo/neosnippet-snippets'
	" }}}

	" Syntax {{{
	NeoBundle 'groenewege/vim-less'
	NeoBundle 'octol/vim-cpp-enhanced-highlight'
	NeoBundle 'vim-jp/cpp-vim'
	NeoBundleLazy 'Rip-Rip/clang_complete', {
				\	'autoload': {
				\		'filetypes' : ["c","cpp"]
				\	},
				\	'build' : {
				\		'others' : "make",
				\	},
				\}
	NeoBundleLazy 'jelera/vim-javascript-syntax', { 'autoload' : { 'filetypes' : ['javascript'] } }
	NeoBundleLazy 'othree/javascript-libraries-syntax.vim', { 'autoload' : { 'filetypes' : ['javascript'] } }
	NeoBundleLazy 'othree/html5.vim', { 'autoload' : { 'filetypes' : ['html', 'ejs'] } }
	NeoBundleLazy 'amirh/HTML-AutoCloseTag', { 'autoload' : { 'filetypes' : ['html'] } }
	NeoBundleLazy 'plasticboy/vim-markdown', { 'autoload' : { 'filetypes' : ['mkd'] } }
	NeoBundleLazy 'PProvost/vim-markdown-jekyll', { 'autoload' : { 'filetypes' : ['mkd'] } }
	NeoBundleLazy 'vim-ruby/vim-ruby', { 'autoload' : { 'filetypes' : ['ruby', 'erb'] } }
	NeoBundle 'marijnh/tern_for_vim', { 'build': { 'others': 'npm install' } }
	NeoBundleLazy 'davidhalter/jedi-vim', {
				\ 'autoload': {
				\   'filetypes': ['python', 'python3', 'djangohtml'],
				\ },
				\ 'build': {
				\   'mac': 'pip install jedi',
				\   'unix': 'pip install jedi',
				\}}
	NeoBundleLazy 'vim-scripts/openscad.vim', { 'autoload' : { 'filetypes' : ['openscad'] } }
	NeoBundleLazy 'peterhoeg/vim-qml', { 'autoload' : { 'filetypes' : ['qml'] } }
	NeoBundleLazy 'octave.vim--', {'autoload' : { 'filetypes' : ['octave'] } }
	"NeoBundleLazy 'tokoro10g/matx-vim'
	" }}}

	" Motion {{{
	NeoBundle 'supasorn/vim-easymotion'
	NeoBundle 'rhysd/clever-f.vim'
	NeoBundle 'kana/vim-textobj-user'
	NeoBundle 'kana/vim-textobj-indent'
	" }}}

	" Colorscheme
	NeoBundle 'morhetz/gruvbox'

	" Very Benry {{{
	NeoBundleLazy 'supermomonga/jazzradio.vim', { 'depends' : [ 'Shougo/unite.vim' ] }
	NeoBundle 'sudo.vim'
	NeoBundle 'embear/vim-localvimrc'
	NeoBundle 'deton/jasegment.vim'
	NeoBundle 'osyo-manga/vim-over'
	NeoBundle 'spolu/dwm.vim'
	NeoBundle 'bling/vim-airline'
	NeoBundle 'lilydjwg/colorizer'
	NeoBundle 'osyo-manga/vim-anzu'
	NeoBundle 'surround.vim'
	NeoBundle 'suan/vim-instant-markdown'
	NeoBundle 'LeafCage/foldCC'
	NeoBundle 'osyo-manga/vim-precious'
	NeoBundle 'edsono/vim-matchit'
	NeoBundle 'thinca/vim-quickrun'
	"NeoBundle 'scrooloose/syntastic'
	NeoBundle 'osyo-manga/vim-watchdogs'
	NeoBundle 'tpope/vim-fugitive'
	NeoBundle 'jmcantrell/vim-virtualenv'
	"NeoBundle 'gerw/vim-latex-suite'
	NeoBundle 'godlygeek/tabular'
	" }}}
	
	" Neta Plugins {{{
	NeoBundleLazy 'supermomonga/shaberu.vim'
	"NeoBundle 'rbtnn/puyo.vim'
	"NeoBundle 'thinca/vim-portal'
	"NeoBundle 'boolfool/vim-sudden-death'
	" }}}
	
	" TweetVim {{{
	NeoBundleLazy 'mattn/webapi-vim'
	NeoBundleLazy 'basyura/twibill.vim'
	NeoBundleLazy 'tyru/open-browser.vim'
	NeoBundleLazy 'mattn/favstar-vim'
	NeoBundleLazy 'basyura/TweetVim'
	"NeoBundle 'tokoro10g/vim-miscmisc'
	" }}}

	" }}}

	NeoBundleSaveCache
endif

call neobundle#end()

NeoBundleCheck

" Custom settings
set runtimepath+=~/.vim/custom
runtime! custom/vimrc/*.vim
runtime! custom/vimrc/plugin/*.vim
runtime! custom/vimrc/plugin/keybind/*.vim

" finally
syntax enable
