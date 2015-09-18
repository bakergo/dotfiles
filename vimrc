syntax on
set shell=/bin/bash
set autochdir
set showmatch
set wildmode=longest,list

set incsearch
set hlsearch

set nohidden
set nowrap

set ruler

set nocompatible               " be iMproved
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
" Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'powerline/fonts'

call vundle#end()

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

filetype plugin indent on

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

set background=dark
if has("gui_running")
	colorscheme solarized
else
	colorscheme jellybeans
endif

"airline config
set laststatus=2
let g:airline_powerline_fonts = 1

