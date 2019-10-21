# Attempt to move the vimrc file
ln -s panda.vimrc ~/.config/nvim/init.vim
echo copied the .vimrc

ln -s panda.tmux.conf ~/.tmux.conf
echo linked tmux.conf

# FIXME Not sure what's wrong here, disable for now
ln -s panda.bashrc ~/.bashrc
echo linked bashrc

ln -s panda.gitconfig ~/.gitconfig
echo linked git config

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
git clone https://github.com/mileszs/ack.vim.git
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
echo cloning syntax plugins
git clone https://github.com/exu/pgsql.vim.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/leafgarland/typescript-vim.git
