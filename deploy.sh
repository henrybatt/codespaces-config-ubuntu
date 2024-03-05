#!/bin/bash

# Clone dotfile configs
git -C "dotfiles" pull || git clone https://github.com/henrybatt/dotfiles.git

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo $SCRIPT_DIR

mkdir -p ~/.local
cd ~/.local

# Install zoxide
#curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash


curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/usr/bin/nvim
