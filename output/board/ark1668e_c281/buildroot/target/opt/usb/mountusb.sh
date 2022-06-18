#!/bin/sh

mount -t vfat /dev/$1 /mnt/usb

sync

if [ ! -d "/mnt/usb/logs" ]; then
        cp -rf /usr/log/logs /mnt/usb/
fi

if [ -f "/mnt/usb/awtk_update/update.sh" ]; then
        /mnt/usb/awtk_update/update.sh
fi