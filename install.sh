#!/bin/bash

echo -e "\nBegin zRam install...\n"

# Copy file in system directory
sudo cp -v zram.default /etc/init.d/
sudo cp -v zramstat /usr/local/bin/
sudo mv -v /etc/init.d/zram.default /etc/init.d/zram

# Setting executable
sudo chmod -v +x /etc/init.d/zram
sudo chmod -v +x /usr/local/bin/zramstat

# Update boot settings
sudo update-rc.d zram defaults

# Install finished...
echo -e "\nzRam install finished, showing some stats...\n"

# Showing some stats
zramstat

# Small break
echo -e "Press any key to exit...\n"
read
exit 0
