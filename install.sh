#!/bin/bash

unameS="$(uname -s)"
case "${unameS}" in
    Darwin*)
        echo "doing OSX install for ack and neovim"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        brew install -v --cask iterm2
        brew install -v ack
        brew install -v neovim
        ;;
    Linux*)
        echo "doing Ubuntu install for ack and neovim"
        sudo apt install ack-grep
        sudo add-apt-repository ppa:neovim-ppa/unstable
        sudo apt-get update
        sudo apt-get install neovim
        ;;
esac


# Attempt to move the vimrc file
mkdir -p ~/.config/nvim
ln -vf panda.vimrc ~/.config/nvim/init.vim

ln -vf panda.ackrc ~/.ackrc

ln -vf panda.tmux.conf ~/.tmux.conf

ln -vf panda.gitconfig ~/.gitconfig

# install pathogen
echo making bundle and auto load folders
mkdir -vp ~/.config/nvim/autoload ~/.config/nvim/bundle

# try with vim-plug
curl -LSso ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
