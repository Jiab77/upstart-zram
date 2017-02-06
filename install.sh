#!/bin/bash

# zRam install script for debian/upstart
# Adapted from the work of Linus Torvalds - https://github.com/torvalds/linux/blob/master/tools/testing/selftests/zram/zram_lib.sh
# And eXtremeSHOK.com - https://raw.github.com/gionn/etc/master/init.d/zram
# Proudly created by Jiab77 (^_^)

# Starting install...
echo -e "\nBegin zRam install..."

# Disable existing swap space
echo -e "\t- Disable existing swap space..."
sudo swapoff -a

# Copying files to system folder
echo -e "\t- Copying files to system folder..."
sudo cp -v zram.default /etc/init.d/
sudo cp -v zramstat /usr/local/bin/
sudo mv -v /etc/init.d/zram.default /etc/init.d/zram

# Setting scripts as executable
echo -e "\t- Setting scripts as executable..."
sudo chmod -v +x /etc/init.d/zram
sudo chmod -v +x /usr/local/bin/zramstat

# Updating boot configuration
echo -e "\t- Updating boot configuration..."
sudo update-rc.d zram defaults

# Install finished...
echo -e "\nzRam install finished, showing some stats...\n"

# Showing compression stats and memory usage
echo -e "\nzRam compression stats:\n"
zramstat
echo -e "\nTotal memory size:\n"
free -mlht

# Small break
echo -e "Press any key to exit...\n"
read
exit 0
