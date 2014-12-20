syntax on
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
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'elzr/vim-json'

filetype plugin indent on
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
colorscheme jellybeans

