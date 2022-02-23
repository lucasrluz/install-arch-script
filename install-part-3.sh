# Install package for personal use
pacman -Syu base-devel xorg xorg-xinit pulseaudio pavucontrol neovim i3-wm rofi alacritty chromium thunar thunar-volman gvfs lxappearance feh

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si