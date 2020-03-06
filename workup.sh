#!/bin/bash
set -e
sudo cryptsetup luksOpen /dev/sda4 wrk
sudo mount /dev/mapper/vg0-wrk /home/grellyd/wrk/
