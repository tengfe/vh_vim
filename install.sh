#!/bin/sh
set -e

cd ~

ln -s ~/.vh_vim/vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +quit +quit

mkdir ~/.vim/colors

cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim

echo "Install Successful :)"
