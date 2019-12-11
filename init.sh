#!/bin/bash

echo "Setting up symlinks..."
DIR=$(pwd)
ln -i -s $DIR/vimrc ~/.vimrc
ln -i -s $DIR/tmux.conf ~/.tmux.conf
ln -i -s $DIR/gitconfig ~/.gitconfig
ln -i -s $DIR/inputrc ~/.inputrc

echo "Installing bin..."
mkdir -p "$HOME/bin"
for f in bin/*; do
  ln -s "$PWD/$f" "$HOME/bin/"
done
