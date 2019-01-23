#! /bin/bash

echo "Formatting your dive to vfat..."

sudo mkfs.vfat $1

echo "formating drive has finished"
