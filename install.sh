# Attempt to move the vimrc file
cp panda.vimrc ~/.config/nvim/init.vim
echo copied the .vimrc

cp panda.tmux.conf ~/.tmux.conf
echo copied tmux.conf

cp panda.bashrc ~/.bashrc
echo copied bashrc

# Make dirs for the vimrc
mkdir ~/.backup

# install pathogen
echo making bundle and auto load folders
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
echo made autoload and bundle dir in ~/.config/nvim

echo attempting to download pathogen
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo downloaded pathogen

# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.config/nvim/bundle
echo cloning ack
git clone git@github.com:mileszs/ack.vim.git
echo cloning ctrlp
git clone git@github.com:kien/ctrlp.vim.git
echo cloning nerdtree
git clone git@github.com:scrooloose/nerdtree.git
echo cloning superTab
git clone git@github.com:ervandew/supertab.git
echo cloning solarized
git clone git@github.com:altercation/vim-colors-solarized.git
