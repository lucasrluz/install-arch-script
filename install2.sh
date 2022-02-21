ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

echo pt_BR.UTF-8 UTF-8 >> /etc/locale.gen

locale-gen

echo "LANG=pt_BR.UTF-8" > /etc/locale.conf

echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

echo "arch" > /etc/hostname

echo "127.0.0.1 localhost.localdomain localhost" > /etc/hosts

echo "::1 localhost.localdomain localhost" >> /etc/hosts

echo "127.0.1.1	arch.localdomain arch" >> /etc/hosts

pacman -S grub efibootmgr

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg
