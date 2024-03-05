#!/bin/bash

# Clone dotfile configs
git -C "dotfiles" pull || git clone https://github.com/henrybatt/dotfiles.git

# Link dotfiles to config
cd dotfiles
chmod +x install.sh
./install.sh

# Use ~/.local if possible
mkdir -p ~/.local
cd ~/.local

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
ln -s ~/.local/squashfs-root/AppRun ~/.local/bin/nvim

# Install zoxide
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo 'eval "$(zoxide init bash --cmd cd)"' >> ~/.bashrc
echo 'eval "$(zoxide init fish --cmd cd)"' >> ~/.zshrc
echo 'zoxide init fish --cmd cd | source' >> ~/.config/fish/config.fish

# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'starship init fish | source' >> ~/.config/fish/config.fish
