""""""""""""""""""""""""""""""""
" .vimrc                       "
"         Tokoro (@tokoro10g)  "
" Last modified: Sep. 11. 2013 "
""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" Custom settings
set runtimepath+=~/.vim/custom
runtime! custom/vimrc/*.vim
runtime! custom/vimrc/plugin/*.vim
runtime! custom/vimrc/plugin/keybind/*.vim

"""""""""""
" Bundles "
"""""""""""
" Using NeoBundle Environment
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

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
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'groenewege/vim-less'
NeoBundle 'Rip-Rip/clang_complete'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'spolu/dwm.vim','b7b2b75094bdb589c539952d3dd114f9f15b7ddd'
NeoBundle 'kannokanno/unite-dwm'
NeoBundle 'bling/vim-airline'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'pasela/unite-webcolorname'
NeoBundle 'osyo-manga/vim-anzu'
NeoBundle 'surround.vim'
NeoBundle 'supasorn/vim-easymotion'
NeoBundle 'rhysd/clever-f.vim'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tokoro10g/TweetVim'
NeoBundle 'tokoro10g/vim-miscmisc'
NeoBundle 'basyura/twibill.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mattn/favstar-vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'gerw/vim-latex-suite'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'PProvost/vim-markdown-jekyll'
NeoBundle 'LeafCage/foldCC'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'Shougo/context_filetype.vim'
NeoBundle 'osyo-manga/vim-precious'
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'marijnh/tern_for_vim', {
			\ 'build': {
			\   'others': 'npm install'
			\}}
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'vim-jp/cpp-vim'
NeoBundle 'justinmk/vim-syntax-extra'
"NeoBundle 'skibyte/gdb-from-vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'davidhalter/jedi-vim', {
			\ 'autoload': {
			\   'filetypes': ['python', 'python3', 'djangohtml'],
			\ },
			\ 'build': {
			\   'mac': 'pip install jedi',
			\   'unix': 'pip install jedi',
			\}}
NeoBundle 'sophacles/vim-bundle-mako'
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'fuenor/im_control.vim'
NeoBundle 'tokoro10g/matx-vim'

" Neta Plugins
"NeoBundle 'rbtnn/puyo.vim'
"NeoBundle 'thinca/vim-portal'
"NeoBundle 'boolfool/vim-sudden-death'

if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
				\string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
endif

" finally
syntax on
