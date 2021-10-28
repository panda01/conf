#!/bin/bash

unameS="$(uname -s)"
case "${unameS}" in
	Darwin*)
		echo "doing OSX install for ack and neovim"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		brew install -v ack
		brew install -v neovim
	;;
	Linux*)
		echo "doing Ubuntu install for ack and neovim"
		sudo apt install ack-grep
		sudo snap install nvim
	;;
esac


# Attempt to move the vimrc file
mkdir -p ~/.config/nvim
ln -vf panda.vimrc ~/.config/nvim/init.vim

ln -vf panda.tmux.conf ~/.tmux.conf

ln -vf panda.bashrc ~/.bashrc

ln -vf panda.gitconfig ~/.gitconfig

# install pathogen
echo making bundle and auto load folders
mkdir -vp ~/.config/nvim/autoload ~/.config/nvim/bundle

curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo downloaded pathogen

# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.config/nvim/bundle
echo cloning ctrlp
git clone -v https://github.com/ctrlpvim/ctrlp.vim.git
echo cloning nerdtree
git clone -v https://github.com/scrooloose/nerdtree.git
echo cloning superTab
git clone -v https://github.com/ervandew/supertab.git
mkdir ~/.config/nvim/colors
echo cloning solarized
git clone -v https://github.com/altercation/vim-colors-solarized.git
ln -vf  vim-colors-solarized/colors/solarized.vim ~/.config/nvim/colors/solarized.vim
echo cloning ack
git clone -v https://github.com/mileszs/ack.vim.git
echo cloning syntax plugins
git clone -v https://github.com/exu/pgsql.vim.git
git clone -v https://github.com/mxw/vim-jsx.git
git clone -v https://github.com/leafgarland/typescript-vim.git
