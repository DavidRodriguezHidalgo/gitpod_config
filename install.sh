#!/bin/zsh
cp .dotfiles/.gitignore ~
cp .dotfiles/.bash_aliases ~
cp -rf .dotfiles/.config ~

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install npm for JS LSP
sudo apt-get -y install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install packer dependencies
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' # Yep, twice
nvim --headless -c 'TSUpdateSync'
