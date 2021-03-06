""""""""""""""""""""""""""""""""
" .vimrc                       "
"         Tokoro (@tokoro10g)  "
""""""""""""""""""""""""""""""""

if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif

set encoding=utf-8

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('Shougo/defx.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('w0rp/ale')
  call dein#add('autozimu/LanguageClient-neovim', {
      \ 'rev': 'next',
      \ 'build': 'bash install.sh',
      \ })
  call dein#add('Shougo/vimproc')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  call dein#add('morhetz/gruvbox')
  call dein#add('spolu/dwm.vim')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('osyo-manga/vim-anzu')
  call dein#add('lervag/vimtex')
  call dein#add('thinca/vim-quickrun')
  call dein#add('deton/jasegment.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Custom settings
set runtimepath+=~/.vim/custom
runtime! custom/vimrc/*.vim
runtime! custom/vimrc/*.nvim
runtime! custom/vimrc/plugin/*.vim
runtime! custom/vimrc/plugin/*.nvim
runtime! custom/vimrc/plugin/keybind/*.vim
runtime! custom/vimrc/plugin/keybind/*.nvim

" finally
filetype plugin indent on
syntax enable
