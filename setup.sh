#! /bin/bash
# Files cleanup
rm -rf ~/.config/nvim;
rm -rf ~/.local/share/nvim;
rm -rf ~/.config/i3;
rm -rf ~/.config/kitty;
rm ~/.bashrc;
# File (Symbolic) linking
ln -s ~/.dotfiles/nvim ~/.config/nvim;
ln -s ~/.dotfiles/i3 ~/.config/i3;
ln -s ~/.dotfiles/kitty ~/.config/kitty;
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc;
