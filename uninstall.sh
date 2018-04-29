#!/bin/ash
read -p "WARNING! Doing this will remove python, Drcom and your Drcom configuration! Would you like to continue? [Return/Ctrl+C]"
killall bash_drcom
rm -rf /userdisk/MiWiFi-Drcom/
rm /etc/rc.local
mv /etc/rc.local.miwifi_backup /etc/rc.local