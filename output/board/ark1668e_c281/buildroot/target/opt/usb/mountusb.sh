#!/bin/sh

mount -t vfat /dev/$1 /mnt

sync

if [ ! -d "/mnt/logs" ]; then
        cp -rf /opt/logs /mnt/
	sync
fi

if [ -f "/mnt/awtk_update/update.sh" ]; then
        /mnt/awtk_update/update.sh
	sync
fi
