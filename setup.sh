#!/bin/bash
curdir=$(dirname $(readlink -f $0))
declare -a packages=(
  build-essential
  fasd
  git
  htop
  keepassx
  ncdu
  python-is-python3
  sshfs
  tilix
  neovim
  vim-gtk
)

sudo apt install "${packages[@]}"

declare -a dotfiles=(
  bashrc
  bashrc.d
  vimrc
  gitconfig
  gvimrc
)

for d in "${dotfiles[@]}" ; do
	ln -sf "$curdir/$d" "$HOME/.${d}"
done

declare -A mapfiles=(
  config/nvim .config/nvim
  bin bin
)

for name in "${!mapfiles[@]}" ; do
	ln -sf "$curdir/$name" "$HOME/${mapfiles[$name]}"
done

# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p "$HOME/src"
mkdir -p "$HOME/ttl"

