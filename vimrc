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
" Plugin 'Valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()

filetype plugin indent on

highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

