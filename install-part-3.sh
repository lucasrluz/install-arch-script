# Install package for personal use
sudo pacman -Syu base-devel xorg xorg-xinit pulseaudio pavucontrol git zsh wget neovim i3-wm rofi alacritty chromium thunar thunar-volman gvfs lxappearance feh

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install package for personal use
yay -S vscodium-bin spotify beekeeper-studio-bin