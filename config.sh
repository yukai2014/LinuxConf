#!/bin/sh

sudo cp ./solarized.vim /usr/share/vim/`ls /usr/share/vim/ | grep "vim[0-9]" `/colors/ 
cp ./.vimrc ~/

cp ./.tmux.config ~/
