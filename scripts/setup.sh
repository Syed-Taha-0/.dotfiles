#! /bin/bash
# Files cleanup
rm -rf ~/.config/nvim;
rm -rf ~/.local/share/nvim;
rm -rf ~/.config/i3;
rm -rf ~/.config/i3status;
rm -rf ~/.config/kitty;
rm -rf ~/.config/rofi;
rm ~/.bashrc;
rm -rf ~/.config/polybar;
# File (Symbolic) linking
ln -s ~/.dotfiles/nvim ~/.config/nvim;
ln -s ~/.dotfiles/i3 ~/.config/i3;
ln -s ~/.dotfiles/kitty ~/.config/kitty;
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc;
ln -s ~/.dotfiles/rofi ~/.config/rofi;
sudo ln -s ~/.dotfiles/ly/config.ini /etc/ly/config.ini;
ln -s ~/.dotfiles/polybar ~/.config/polybar;
