# Set the timezone to São Paulo
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Set the locale
echo pt_BR.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
echo "LANG=pt_BR.UTF-8" > /etc/locale.conf
echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

# Set a new hostname
echo "arch" > /etc/hostname

# Set hosts
echo "127.0.0.1 localhost.localdomain localhost" > /etc/hosts
echo "::1 localhost.localdomain localhost" >> /etc/hosts
echo "127.0.1.1	arch.localdomain arch" >> /etc/hosts

# Install and configure grub
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# Install and enable networkmanager
pacman -S networkmanager
systemctl enable NetworkManager

# Set root password
echo "Set root password:"
passwd

# Create new user
useradd -m -g users -G wheel lucasluz

# Set the new user password
echo "Set lucasluz password:"
passwd lucasluz

# Install sudo
pacman -S sudo
echo "lucasluz ALL=(ALL) ALL" >> /etc/sudoers

# Copy Script 3 for new installation
cp install-part-3.sh /mnt/home/lucasluz