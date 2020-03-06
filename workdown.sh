# ! /bin/bash
set -e
sudo umount /dev/mapper/vg0-wrk
sudo vgchange --activate n vg0
sudo cryptsetup luksClose wrk
