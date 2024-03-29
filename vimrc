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

set nocompatible
filetype off

"" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" Plugin 'Valloric/YouCompleteMe'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
" Plug 'VundleVim/Vundle'
Plug 'nanotech/jellybeans.vim'
Plug 'powerline/fonts'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

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
  "set guifont=Inconsolata\ for\ Powerline\ Medium\ 11
endif

" deoplete
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

source ~/.vim/localrc.vim
