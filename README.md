# upstart-zram

Creates a swap drives into memory using debian upstart

Adapted from the work of Linus Torvalds - https://github.com/torvalds/linux/blob/master/tools/testing/selftests/zram/zram_lib.sh

And [eXtremeSHOK.com](https://extremeshok.com/) - https://raw.github.com/gionn/etc/master/init.d/zram

# Installation

Just set `install.sh` as executable like this:

```shell
chmod -v +x install.sh
./install.sh
```

> The install script should be already executable but if not, proceed as explained above.

# Disable existing swap space

After the installation, you might have to remove / delete your existing swap partition. The swap partition is completely useless with `zRam`.

__*There is plenty of methods to do that and it depends of your configuration.*__

This script was tested with and without `LVM+LUKS` and you just have to delete your swap partition with the tool of your choice (`fdisk`, `gparted`, `LVM` Tools [`vg`, `pv`, `lv`]).

# Known Issues

For an unknown reason (*for now*), `zRam` seems to be incompatible with `ecryptfs` used for encrypt your home folder when you can't do a full disk encryption.

> I guess that's because it requires an encrypted swap space...

# Contribute

Feel free to contribute to this project with your pull requests :+1:
