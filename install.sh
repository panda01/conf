# Attempt to move the vimrc file
cp panda.vimrc ~/.vimrc
echo copied the .vimrc

cp panda.tmux.conf ~/.tmux.conf
echo copied tmux.conf

# install pathogen
echo making bundle and auto load folders
mkdir -p ~/.vim/autoload ~/.vim/bundle
echo made autoload and bundle dir in ~/.vim

echo attempting to download pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo downloaded pathogen

# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.vim/bundle
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
