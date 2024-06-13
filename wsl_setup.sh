#!/bin/bash

# ============================
# Make Preferred File Structure
# ============================
mkdir ~/{Downloads,Projects}

# ============================
# Install Basic Dev Tools
# ============================
apt-get update
apt install g++ build-essential
apt install cmake
apt install cmake-curses-gui
apt install doxygen
apt install libboost-all-dev

# ============================
# Install Git
# ============================
apt install git
git config --global core.autocrlf true
git config --global user.name "Alex"
git config --global core.editor "vim"

# ============================
# Install Starship
# ============================
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# ============================
# Update & Config Vim
# ============================
# Copy vimrc to home directory
cp vimrc ~/.vimrc

# Make directories which vimrc utilizes
mkdir -p ~/.vim/{autoload,backup,bundle,undo,swap}

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/autoload/nerdtree

# ColorSchemes
# Gruvbox-Material
mkdir ~/.vim/colors
git clone --depth 1 https://github.com/sainnhe/gruvbox-material.git ~/Downloads
cp ~/Downloads/gruvbox-material/autoload/gruvbox_material.vim ~/.vim/autoload/
cp ~/Downloads/gruvbox-material/colors/gruvbox-material.vim ~/.vim/colors/

# ============================
# Download Mavlink C Lib
# ============================
git clone https://github.com/mavlink/c_library_v2.git ~/Projects/

# ============================
# Install Gazebo
# ============================

# Depend
sudo apt-get install lsb-release wget gnupg

# Install
sudo wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
sudo apt-get update
sudo apt-get install gz-harmonic

