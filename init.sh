#!/bin/bash

echo "Setting up symlinks..."
DIR=$(pwd)
ln -i -s $DIR/vimrc ~/.vimrc
ln -i -s $DIR/tmux.conf ~/.tmux.conf
ln -i -s $DIR/gitconfig ~/.gitconfig
