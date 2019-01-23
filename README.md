# Vformat
Essentially 3 scripts that will run after 1 command to reformat a hard drive / USB drive for Ubuntu 18.04.1

# Purpose
I got tired of typing these commands individually, so, I wrote these scripts to finish the formatting process with 1 command.

# Ubuntu commands used
Vformat uses 5 commands: fidsk -l, wipefs -af, umount, cfdisk, and mkfs.vfat

# How to run
1. Start the Ubuntu Shell and change directories to the folder that has the Vformat scripts.
2. Once in the folder, run command "sudo bash fdisk_list.sh". 
3. The first script will prompt user permission before proceeding the rest of the script. More prompts will follow once the proceeding has started.

# Important Notes
All three files within this repository needs to be in the same folder.
If you'd like to have the three scripts in a seperate folder from each other, you must edit the script to your needs.

# Author
Tswjfwmeng Vang
