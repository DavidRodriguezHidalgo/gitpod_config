#!/bin/zsh
cp .dotfiles/.gitignore ~
cp .dotfiles/.bash_aliases ~
cp -rf .dotfiles/.config ~

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
