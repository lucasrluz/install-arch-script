ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

echo pt_BR.UTF-8 UTF-8 >> /etc/locale.gen

locale-gen

echo "LANG=pt_BR.UTF-8" > /etc/locale.conf

echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

echo "arch" > /etc/hostname

echo "127.0.0.1 localhost.localdomain localhost" > /etc/hosts

echo "::1 localhost.localdomain localhost" >> /etc/hosts

echo "127.0.1.1	arch.localdomain arch" >> /etc/hosts
