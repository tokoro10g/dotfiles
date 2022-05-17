set nocompatible

filetype plugin indent on
syntax on

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set ruler
set number

set backspace=indent,eol,start
set hidden
set laststatus=2
set display=lastline

set showmode
set showcmd

set smartcase
set incsearch
set hlsearch

set ttyfast
set lazyredraw

set splitbelow
set splitright

set cursorline
set wrapscan
set report=0
set synmaxcol=200

set clipboard&
set clipboard^=unnamedplus

set backup
if !isdirectory($HOME."/.vim/files")
    silent !mkdir -p ~/.vim/files/backup
    silent !mkdir -p ~/.vim/files/swap
    silent !mkdir -p ~/.vim/files/undo
    silent !mkdir -p ~/.vim/files/info
endif
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap/
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
set viminfo='100,n$HOME/.vim/files/info/viminfo+

colorscheme slate

" Language-specific settings
augroup filetypedetect
    au BufRead,BufNewFile *.launch setfiletype xml
    au BufRead,BufNewFile *.urdf setfiletype xml
augroup END
autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype xml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
call matchadd("ExtraWhitespace", '\s\+$')

" Show hidden characters
set list
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif
