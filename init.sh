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
  if [ ! -f "$HOME/$f" ]; then
    ln -s "$PWD/$f" "$HOME/bin/"
  fi
done

if ! crontab -l | grep -q eye_reminder\\.sh; then
  (crontab -l ; echo "*/20 * * * * \"${HOME}/bin/eye_reminder.sh\"") | crontab -
fi

mkdir -p ~/.vim/undo

