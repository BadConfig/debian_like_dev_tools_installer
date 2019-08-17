#!/bin/bash

#to get root 
su

#for fresh repos
apt-get -y update && apt-get -y  upgrade

#installing main pakages
apt-get install -y sudo nasm gcc vim git screenfetch build-essential cmake
python3-dev python3  
#screenfetch
echo "\n#screenfetch autorun\nif [ -f /usr/bin/screenfetch ]; then screenfetch;fi"

#setup aliases
cp ./.bash_aliases ~/.bash_aliases 
. ~/.bashrc 

#setup vim
cp ./.vimrc ~/.vimrc -r 
apt-get install clang-tools-8
update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
cp ./.vim ~/.vim 
~/.vim/bundle/YouCompleteMe/install.py --all
~/.vim/bundle/YouCompleteMe/install.py --clangd-completer


