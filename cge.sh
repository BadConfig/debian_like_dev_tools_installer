#!/bin/bash

#for fresh repos
sudo apt-get -y update && sudo apt-get -y  upgrade

#installing main pakages
sudo apt-get install -y sudo nasm gcc git screenfetch build-essential cmake python3-dev python3 vim vim-nox
#screenfetch
echo '\n#screenfetch autorun\nif [ -f /usr/bin/screenfetch ]; then screenfetch;fi' >> ~/.bashrc

#setup aliases
cp ./.bash_aliases ~/.bash_aliases 
. ~/.bashrc 

#setup vim
cp ./.vimrc ~/.vimrc -r 
apt-get install clang-tools-8
update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


