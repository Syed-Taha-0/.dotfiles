# My personal dotfiles/config files.
## Software Installation for Arch based distros
```
sudo pacman -Syu base-devel github-cli networkmanager nm-connection-editor network-manager-applet i3-wm i3status kitty neovim npm feh firefox man-db man-pages  rofi ripgrep thunar tree valgrind
```
Install '''pfetch''' from the AUR.

## Installation
```
mkdir ~/.dotfiles;
git clone https://github.com/Syed-Taha-0/.dotfiles.git ~/.dotfiles ;
cd ~/.dotfiles
```

Run the setup file to configure everything properly (Warning! This deletes all present configs of the respective softwares.
Do a backup if you need them):
```
./setup.sh
```
Have fun!(hopefully)
