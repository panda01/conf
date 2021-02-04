#!/bin/bash

sudo apt-get install git
echo installed git

touch ~/.gitconfig
ln -f student.gitconfig ~/.gitconfig
echo linked git config

sudo snap install nvim --classic

mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
ln -f panda.vimrc ~/.config/nvim/init.vim

# Make dirs for the vimrc
mkdir ~/.backup

# install pathogen, plugin manager
echo making bundle and auto load folders
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
echo made autoload and bundle dir in ~/.config/nvim

echo attempting to download pathogen
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo downloaded pathogen

# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.config/nvim/bundle
echo cloning ctrlp
git clone https://github.com/ctrlpvim/ctrlp.vim.git
echo cloning nerdtree
git clone https://github.com/scrooloose/nerdtree.git
echo cloning superTab
git clone https://github.com/ervandew/supertab.git
mkdir ~/.config/nvim/colors
echo cloning solarized
git clone https://github.com/altercation/vim-colors-solarized.git
ln vim-colors-solarized/colors/solarized.vim ~/.config/nvim/colors/solarized.vim
