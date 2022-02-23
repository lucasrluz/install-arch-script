# Set br-abnt2 keyboard layout
loadkeys br-abnt2

# Create the file systems for the new partitions 
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3
mkswap /dev/sda4

# Mount the newly created partitons
mount /dev/sda2 /mnt
mkdir /mnt/home
mkdir /mnt/boot
mkdir /mnt/boot/efi
mount /dev/sda3 /mnt/home
mount /dev/sda1 /mnt/boot/efi
swapon /dev/sda4

# Install the base system
pacstrap /mnt base linux linux-firmware

# Automatically generate the fstab file from the mount configuration
genfstab -U /mnt >> /mnt/etc/fstab

# Copy the second file for the advanced config process to the hdd
cp ./install2.sh /mnt

# Switch to the newly installed system and run the second file
arch-chroot /mnt /install2.sh
