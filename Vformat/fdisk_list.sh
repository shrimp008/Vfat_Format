#!/bin/bash

echo "Be cautious when choosing your drive path and partition path. System damage may result if you choose the wrong filepath."
read -p  "This script will attempt to wipe and format your drive to vfat. Do you wish to continute?": USER_INPUT

if [ $USER_INPUT = "yes" ] || [ $USER_INPUT = "y" ]; then
	sudo fdisk -l
	read -p "What is the drive path?": DRIVE_PATH
	if [ $DRIVE_PATH != "exit" ]; then
		read -p "What is the parition path?": PARTITION_PATH
		if [ $PARTITION_PATH != "exit" ]; then
			sudo bash ./wipefs_cfdisk.sh $DRIVE_PATH $PARTITION_PATH
		else
			exit 130
		fi
	else
		exit 130
	fi

else
	exit 130
fi
