#!/bin/bash

# Update package lists and install packages
sudo apt-get update
sudo apt-get -y install bspwm sxhkd nemo ranger kitty alacritty xdg-user-dirs xdg-user-dirs-gtk

# Refresh Directories
xdg-user-dirs-update
xdg-user-dirs-gtkupdate

# Create required directories and files
mkdir -p /home/$USER/.config/bspwm
touch /home/$USER/.config/bspwm/bspwmrc
cp $XDG_CONFIG_HOME/bspwm/bspwmrc /home/$USER/.config/bspwm/bspwmrc
sudo chmod 774 /home/$USER/.config/bspwm/bspwmrc

mkdir -p /home/$USER/.config/sxhkd
touch /home/$USER/.config/sxhkd/sxhkdrc
sudo chmod 774 /home/$USER/.config/sxhkd/sxhkdrc

# Install development packages
sudo apt-get -y install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
sudo apt-get -y install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev 
sudo apt-get -y install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev 
sudo apt-get -y install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev 
sudo apt-get -y install libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
sudo apt-get -y install bison flex libstartup-notification0-dev check autotools-dev libpango1.0-dev librsvg2-bin librsvg2-dev libcairo2-dev libglib2.0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
sudo apt-get -y install bspwm polybar sxhkd alacritty brightnessctl dunst rofi jq policykit-1-gnome git playerctl mpd ncmpcpp geany ranger mpc xdotool feh ueberzug maim pamixer libwebp-dev xdg-user-dirs nala webp-pixbuf-loader
sudo apt-get -y install gvfs gvfs-backends engrampa tint2 dmenu xdo jgmenu redshift xautolock fzf ytfzf yt-dlp gawk tumbler gpick neofetch xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf libglib2.0-bin btop 
sudo apt-get -y install ncdu bat exa wmctrl acpid xclip scrot acpi mpdris2 libplayerctl-dev gir1.2-playerctl-2.0 lxappearance bc xclip xdotool x11-xserver-utils dex kitty geany geany-plugins zenity yad
sudo apt-get -y install dex fonts-noto-mono fonts-ibm-plex lsb-release

# Install deb-get and Deborah
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
sudo deb-get install deborah

# Clone and build picom from source
git clone https://github.com/dccsillag/picom.git
cd picom
meson setup --buildtype=release build
ninja -C build
sudo ninja -C build install
cd ..

# Download and install Neovim
wget https://github.com/neovim/neovim-releases/releases/download/v0.10.1/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb

# Clean up
rm nvim-linux64.deb
