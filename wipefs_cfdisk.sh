#! /bin/bash

echo "Wiping file system.."
sudo wipefs -af $1
sudo wipefs -af $2
echo "Unmount current partittion..."
sudo umount $2
echo "Writing new partition..."
sudo cfdisk $1
read -p "Starting the mkfs.vfat command: what is the new partition you'd like to format? Example: '/dev/sdb1' ": NEW_PARTITION_FILE
sudo bash ./mkfs.sh $NEW_PARTITION_FILE
