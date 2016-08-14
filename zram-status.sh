#!/bin/bash

# Made by Jiab77 - https://github.com/jiab77
# Thanks to this code :
# https://github.com/torvalds/linux/blob/master/tools/testing/selftests/zram/zram_lib.sh

echo -e "\n"
echo zram Compression Algorithm: `cat /sys/block/zram0/comp_algorithm`;
echo -e "---------------------------\n";
echo zram Compression Stats: `cat /sys/block/zram0/compr_data_size`%;
echo -e "-----------------------";
echo -e "\nSWAP Stats:\n-----------\n";
swapon -s | grep zram
echo -e "\nMemory Stats:\n-------------\n";
free -m -l -h -t

exit 0
