#!/bin/sh
#for wifi
#/etc/hostapd.sh
#for eclink
#insmod /lib/modules/4.19.192/kernel/drivers/net/wireless/realtek/rtl8821cs/rtl8821cs.ko
ifconfig wlan1 up
ifconfig wlan1 192.168.3.1
udhcpd /etc/udhcpd_p2p.conf
wpa_supplicant -Dnl80211 -iwlan1 -c /etc/p2p_supplicant.conf  -B
#wpa_cli -i wlan1 p2p_group_add persistent 
wpa_cli -i wlan1 p2p_group_add persistent freq=5
wpa_cli -i wlan1 wps_pbc
echo "network is start"
