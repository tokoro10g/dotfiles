""""""""""""""""""""""""""""""""
" .vimrc                       "
"         Tokoro (@tokoro10g)  "
""""""""""""""""""""""""""""""""

if !1 | finish | endif

"""""""""""
" Bundles "
"""""""""""
" Using NeoBundle Environment
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

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
NeoBundle 'Shougo/unite-build'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neossh.vim'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'groenewege/vim-less'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'vim-jp/cpp-vim'
NeoBundleLazy 'Rip-Rip/clang_complete', {
			\	'autoload': {
			\		'filetypes' : ["c","cpp"]
			\	},
			\	'build' : {
			\		'windows' : "make",
			\		'cygwin' : "make",
			\		'mac' : "make",
			\		'unix' : "make",
			\	},
			\}
NeoBundleLazy 'jelera/vim-javascript-syntax', {
			\	'autoload' : {
			\		'filetypes' : ['javascript'],
			\	},
			\}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim', {
			\	'autoload' : {
			\		'filetypes' : ['javascript'],
			\	},
			\}
NeoBundle 'spolu/dwm.vim'
NeoBundle 'kannokanno/unite-dwm'
NeoBundle 'bling/vim-airline'
NeoBundle 'lilydjwg/colorizer'
"NeoBundle 'pasela/unite-webcolorname'
NeoBundle 'osyo-manga/vim-anzu'
NeoBundle 'surround.vim'
NeoBundle 'supasorn/vim-easymotion'
NeoBundle 'rhysd/clever-f.vim'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'tokoro10g/vim-miscmisc'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'gerw/vim-latex-suite'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'PProvost/vim-markdown-jekyll'
NeoBundle 'LeafCage/foldCC'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundleLazy 'Shougo/context_filetype.vim'
NeoBundle 'osyo-manga/vim-precious'
NeoBundle 'othree/html5.vim'
NeoBundle 'marijnh/tern_for_vim', {
			\ 'build': {
			\   'others': 'npm install'
			\}}
NeoBundle 'justinmk/vim-syntax-extra'
"NeoBundle 'skibyte/gdb-from-vim'
NeoBundle 'vim-ruby/vim-ruby', {
			\	'autoload' : {
			\		'filetypes' : ['ruby', 'erb'],
			\	},
			\}
NeoBundle 'chase/vim-ansible-yaml'
NeoBundleLazy 'davidhalter/jedi-vim', {
			\ 'autoload': {
			\   'filetypes': ['python', 'python3', 'djangohtml'],
			\ },
			\ 'build': {
			\   'mac': 'pip install jedi',
			\   'unix': 'pip install jedi',
			\}}
NeoBundle 'sophacles/vim-bundle-mako'
NeoBundleLazy 'amirh/HTML-AutoCloseTag', {
			\	'autoload' : {
			\		'filetypes' : ['html'],
			\	},
			\}
NeoBundleLazy 'vim-scripts/openscad.vim', {
			\	'autoload' : {
			\		'filetypes' : ['openscad'],
			\	},
			\}
NeoBundle 'edsono/vim-matchit'
NeoBundle 'fuenor/im_control.vim'
NeoBundle 'tokoro10g/matx-vim'
NeoBundle 'embear/vim-localvimrc'
NeoBundleLazy 'peterhoeg/vim-qml', {
			\	'autoload' : {
			\		'filetypes' : ['qml'],
			\	},
			\}
NeoBundleLazy 'mfumi/unite-mpc'
NeoBundleLazy 'supermomonga/jazzradio.vim', { 'depends' : [ 'Shougo/unite.vim' ] }
if neobundle#tap('jazzradio.vim')
	call neobundle#config({
				\	'autoload' : {
				\		'unite_sources' : [
				\			'jazzradio'
				\		],
				\		'commands' : [
				\			'JazzradioUpdateChannels',
				\			'JazzradioStop',
				\			{
				\				'name' : 'JazzradioPlay',
				\				'complete' : 'customlist,jazzradio#channel_id_complete'
				\			}
				\		],
				\		'function_prefix' : 'jazzradio'
				\	}
				\})
endif
NeoBundle 'octave.vim--'
NeoBundle 'osyo-manga/vim-over'

NeoBundle 'deton/jasegment.vim'

" Neta Plugins
NeoBundle 'supermomonga/shaberu.vim'
"NeoBundle 'rbtnn/puyo.vim'
"NeoBundle 'thinca/vim-portal'
"NeoBundle 'boolfool/vim-sudden-death'

" TweetVim
NeoBundleLazy 'mattn/webapi-vim'
NeoBundleLazy 'basyura/twibill.vim'
NeoBundleLazy 'tyru/open-browser.vim'
NeoBundleLazy 'mattn/favstar-vim'
NeoBundleLazy 'basyura/TweetVim'

call neobundle#end()

" Custom settings
set runtimepath+=~/.vim/custom
runtime! custom/vimrc/*.vim
runtime! custom/vimrc/plugin/*.vim
runtime! custom/vimrc/plugin/keybind/*.vim

NeoBundleCheck

" finally
syntax on
