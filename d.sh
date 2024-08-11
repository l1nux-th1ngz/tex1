#!/bin/bash

# Update package lists and install packages
sudo apt-get update
sudo apt-get -y install bspwm sxhkd nemo ranger kitty polybar alacritty alacritty xdg-user-dirs xdg-user-dirs-gtk

# Refresh Directories
xdg-user-dirs-update
xdg-user-dirs-gtk-update

# Create required directories and files
mkdir -p /home/$USER/.config/bspwm
touch /home/$USER/.config/bspwm/bspwmrc
cp $XDG_CONFIG_HOME/bspwm/bspwmrc /home/$USER/.config/bspwm/bspwmrc
sudo chmod 774 /home/$USER/.config/bspwm/bspwmrc

mkdir -p /home/$USER/.config/sxhkd
touch /home/$USER/.config/sxhkd/sxhkdrc
sudo chmod 774 /home/$USER/.config/sxhkd/sxhkdrc

sudo apt-get -y install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
sudo apt-get -y install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev 
sudo apt-get -y install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev 
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt-get -y install brave-browser
sudo apt-get -y install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev 
sudo apt-get -y install libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
sudo apt-get -y install bison flex libstartup-notification0-dev check autotools-dev libpango1.0-dev librsvg2-bin librsvg2-dev libcairo2-dev libglib2.0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
sudo apt-get -y install brightnessctl dunst rofi jq policykit-1-gnome git playerctl mpd ncmpcpp geany ranger mpc xdotool  ueberzug maim pamixer libwebp-dev xdg-user-dirs nala webp-pixbuf-loader
sudo apt-get -y install gvfs gvfs-backends engrampa tint2 dmenu xdo jgmenu redshift xautolock fzf ytfzf yt-dlp gawk tumbler gpick neofetch xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf libglib2.0-bin btop 
sudo apt-get -y install ncdu bat exa wmctrl acpid xclip scrot acpi mpdris2 libplayerctl-dev gir1.2-playerctl-2.0 lxappearance bc xclip xdotool x11-xserver-utils dex kitty geany geany-plugins zenity yad
sudo apt-get -y install dex fonts-noto-mono fonts-ibm-plex lsb-release
sudo apt update
sudo apt-get -y install asciidoctor udiskie libgtk3-perl libgl1-mesa-glx libegl1-mesa libxrandr2 libxss1 bluez blueman
sudo systemctl enable bluetooth
sleep 4
sudo apt-get -y install cmake-extras libfreetype6-dev libfontconfig1-dev xclip uxplay qt5-style-plugins build-essential libglib2.0-dev python3
sudo apt-get -y install python3-pip python3-venv python-dbus-dev libpangocairo-1.0-0 python3-cairocffi caca-utils fzf pylint chafa calc dmenu netcat
sudo apt-get -y install ffmpeg libsixel1  cmake cmake-data libcairo2-dev libxcb1-dev libxcb-util0-dev python3-xcbgen xcb-proto figlet libxcb-composite0-dev
sudo apt-get -y install libmpdclient-dev pkg-config libxcb-randr0-dev dconf-editor hw-probe libssl-dev libreadline-dev zlib1g-dev autoconf bison libyaml-dev libncurses5-dev
sudo apt-get -y install libffi-dev libgdbm-dev hwinfo dkms linux-headers-$(uname -r) exa network-manager-gnome rbenv dex geany-plugins geolocate fonts-crosextra-carlito 
sudo apt-get -y install fonts-crosextra-caladea zram-tools zram-config fonts-ubuntu ttf-ubuntu-font-family fonts-font-awesome fonts-material-design-icons-iconfont gawk tumbler
sudo apt-get -y install gpick neofetch xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf jq mpdris2 tmux gir1.2-playerctl-2.0 lxappearance bc fonts-noto-color-emoji
sudo apt-get -y install fonts-symbola node-emojis-list engrampa tint2 xdo jgmenu redshift xautolock ytfzf yt-dlp gparted whois i3lock cmus ranger 
sudo apt-get -y install policykit-1-gnome playerctl mpd ncmpcpp geany mpc picom inxi gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi qt5ct gpg-agent libavcodec-dev 
sudo apt-get -y install libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libjpeg-dev libpng-dev rxvt-unicode qbittorrent libconfig-dev libdbus-1-dev libegl-dev
sudo apt-get -y install libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libglib2.0-bin btop ncdu bat wmctrl scrot libplayerctl-dev libgtk-3-dev xorg xvkbd 
sudo apt-get -y install xinput libxml2-dev lolcat libxslt1-dev software-properties-common ruby-dev rubygems libsixel-bin network-manager btop
sudo systemctl enable avahi-daemon
sleep 3
sudo systemctl enable acpid
sudo apt get update
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | gpg --dearmor | sudo tee /usr/share/keyrings/packages.mozilla.org.gpg > /dev/null
gpg --quiet --no-default-keyring --keyring /usr/share/keyrings/packages.mozilla.org.gpg --fingerprint | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'
echo "deb [signed-by=/usr/share/keyrings/packages.mozilla.org.gpg] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
sudo apt update
sudo apt-get -y install firefox
sudo apt-get -y install xattr zathura zathura-cb libsm6 libxext6 libxrender-dev srt-tools yad zenity avahi-daemon zip unzip asciidoc pipewire pipewire-audio-client-libraries
sudo apt-get -y install pulseaudio-utils wireplumber pipewire-audio pipewire-pulse pipewire-alsa libspa-0.2-bluetooth pavucontrol pipx python3-xcffib libxkbcommon-dev libxkbcommon-x11-dev
sudo apt-get -y install intel-microcode libx11-dev libxft-dev libxinerama-dev libx11-xcb-dev libxcb-res0-dev python3-dev coreutils libtbb2 libtbb-dev libdc1394-22-dev libtiff-dev
sudo apt-get -y install gfortran openexr libatlas-base-dev sox dialog mtools dosfstools libnotify-bin libnotify-dev libuv1-dev dirmngr ca-certificates libxcb-render-util0-dev 
sudo apt-get -y install libxcb-shape0-dev libxcb-util-dev libxcb-damage0-dev libxcb-glx0-dev xinit ffmpegthumbnailer net-tools ripgrep silversearcher-ag font-manager vlc subversion
sudo apt-get -y install numlockx dunst webp unifont suckless-tools viewnior xsel x11-xserver-utils cron libpango1.0-dev sxiv gnome-disk-utility tree nala zoxide tmux python3-ueberzug 
sudo apt-get -y install libxcb-xinerama0-dev ttf-ancient-fonts-symbola fonts-fork-awesome fonts-powerline fonts-roboto fonts-roboto-fontface ttf-mscorefonts-installer rar unrar 
sudo apt-get -y install libavcodec-extra xcb gcc libgtkmm-3.0-dev libxcb-xtest0-dev xdotool ueberzug maim pamixer libwebp-dev xdg-user-dirs webp-pixbuf-loader xserver-xorg zathura-djvu 
sudo apt-get -y install zathura-pdf-poppler zathura-ps python3-setuptools atool toilet toilet-fonts ascii lz4 jq wq



# Install development packages
sudo apt-get -y install build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
sudo apt-get -y install cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev 
sudo apt-get -y install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev 
sudo apt-get -y install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev 
sudo apt-get -y install libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
sudo apt-get -y install bison flex libstartup-notification0-dev check autotools-dev libpango1.0-dev librsvg2-bin librsvg2-dev libcairo2-dev libglib2.0-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
sudo apt-get -y install brightnessctl dunst rofi jq policykit-1-gnome git playerctl mpd ncmpcpp geany ranger mpc xdotool  ueberzug maim pamixer libwebp-dev xdg-user-dirs nala webp-pixbuf-loader
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
