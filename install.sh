#!/bin/zsh
cp .dotfiles/.gitignore ~
cp .dotfiles/.bash_aliases ~
cp -rf .dotfiles/.config ~

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz
rm lazygit
# Install npm for JS LSP
sudo apt-get -y install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Install packer dependencies
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' # Yep, twice
nvim --headless -c 'TSUpdateSync'
