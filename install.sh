loadkeys br-abnt2

mkfs.fat -F32 /dev/sda1

mkfs.ext4 /dev/sda2

mkfs.ext4 /dev/sda3

mkswap /dev/sda4

mount /dev/sda2 /mnt

mkdir /mnt/home

mkdir /mnt/boot

mkdir /mnt/boot/efi

mount /dev/sda3 /mnt/home

mount /dev/sda1 /mnt/boot/efi

swapon /dev/sda4
