loadkeys br-abnt2

mkfs.fat -F32 /dev/sda1

mkfs.ext4 /dev/sda2

mkfs.ext4 /dev/sda3

mkswap /dev/sda4
