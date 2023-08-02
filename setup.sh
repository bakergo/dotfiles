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

declare -a regfiles=(
  bin
)

for d in "${dotfiles[@]}" ; do
	ln -sf "$curdir/$d" "$HOME/${d}"
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p "$HOME/src"
mkdir -p "$HOME/ttl"

