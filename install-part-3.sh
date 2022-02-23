# Install package for personal use
sudo pacman -Syu base-devel xorg xorg-xinit pulseaudio pavucontrol ttf-jetbrains-mono wget chromium thunar thunar-volman gvfs lxappearance git zsh neovim i3-wm rofi alacritty feh

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install package for personal use
yay -S vscodium-bin spotify beekeeper-studio-bin

# Configure git
git config --global user.name "lucasrluz"
git config --global user.email "lucasr.luzbr@gmail.com"

# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install and configure oh my zsh theme
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
ln -s "$ZSH_CUSTOM/themes/typewritten/async.zsh" "$ZSH_CUSTOM/themes/async"

echo "Set ZSH_THEME="typewritten" in your .zshrc file."