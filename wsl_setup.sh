#!/bin/bash

mkdir ~/{Downloads,Projects}

apt install g++ build-essential

apt install cmake
apt install cmake-curses-gui

apt install doxygen

apt install libboost-all-dev

apt install git
git config --global user.email "ARICKERT0003@gmail.com"
git config --global user.name "Alex"
git config --global core.editor "vim"

curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Copy vimrc to home directory
cp vimrc ~/.vimrc

# Make directories which vimrc utilizes
mkdir -p ~/.vim/{autoload,backup,bundle,undo,swap}

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/autoload/nerdtree

# ColorSchemes

# Everforest
mkdir -p ~/.vim/pack/colors/opt
git clone --depth 1 https://github.com/sainnhe/everforest.git ~/.vim/pack/colors/opt/everforest

# Gruvbox-Material
mkdir ~/.vim/colors
git clone --depth 1 https://github.com/sainnhe/gruvbox-material.git ~/Downloads
cp ~/Downloads/gruvbox-material/autoload/gruvbox_material.vim ~/.vim/autoload/
cp ~/Downloads/gruvbox-material/colors/gruvbox-material.vim ~/.vim/colors/

