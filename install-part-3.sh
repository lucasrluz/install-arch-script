# Install package for personal use
sudo pacman -Syu base-devel xorg xorg-xinit pulseaudio pavucontrol inter-font ttf-jetbrains-mono wget chromium thunar thunar-volman gvfs lxappearance git zsh neovim i3-wm rofi alacritty feh

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
sudo git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
sudo ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
sudo ln -s "$ZSH_CUSTOM/themes/typewritten/async.zsh" "$ZSH_CUSTOM/themes/async"

# Copy xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# Clone dotfiles
git clone https://github.com/lucasrluz/my-configs.git
cd my-configs

# Autostart X at login
cp zsh/.zprofile ~/

# Configure start
mkdir ~/.config/start
cp start/start.sh ~/.config/start

# Configure neovim
mkdir ~/.config/nvim
cp nvim/init.vim ~/.config/nvim

# Configure i3-wm
mkdir ~/.config/i3
cp i3-wm/config ~/.config/i3

# Configure rofi
mkdir ~/.config/rofi
cp rofi/config ~/.config/rofi
cp rofi/dmenu.rasi ~/.config/rofi

# Configure alacritty
mkdir ~/.config/alacritty
cp alacritty/alacritty.yml ~/.config/alacritty

echo 'Set ZSH_THEME="typewritten" in your .zshrc file.'
echo 'Set "exec i3" in your .xinitrc file.'