!#/bin/bash

# Copy file in system directory
sudo cp -v zram.default /etc/init.d/
sudo mv -v /etc/init.d/zram.default /etc/init.d/zram

# Setting executable
sudo chmod -v +x /etc/init.d/zram

# Update boot settings
sudo update-rc.d zram defaults
