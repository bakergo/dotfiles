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

Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'VundleVim/Vundle'
Plugin 'nanotech/jellybeans.vim'
Plugin 'powerline/fonts'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

filetype plugin indent on
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

set tabstop=2
set shiftwidth=2
set expandtab

" vim-airline
set laststatus=2
let g:airline#extensions#syntastic#enabled = 1

set background=dark
colorscheme jellybeans

if has('gui_running')
  let g:airline_powerline_fonts = 1
  set guifont=Inconsolata\ for\ Powerline\ Medium\ 11
endif

source ~/.vim/localrc.vim
