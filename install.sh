#!/bin/ash
echo "MiWiFi-Drcom installing..."
mkdir /userdisk/MiWiFi-Drcom/
cp -R Package/python/* /userdisk/MiWiFi-Drcom/
rm /userdisk/MiWiFi-Drcom/usr/bin/python
ln -s /userdisk/MiWiFi-Drcom/usr/bin/python2.7 /userdisk/MiWiFi-Drcom/usr/bin/python
cp -R Package/bash/* /userdisk/MiWiFi-Drcom/
cp -R Package/screen/* /userdisk/MiWiFi-Drcom/
ln -s /userdisk/MiWiFi-Drcom/usr/bin/bash /userdisk/MiWiFi-Drcom/usr/bin/bash_drcom
mkdir /userdisk/MiWiFi-Drcom/config/
cp Package/drcom/Drcom.py /userdisk/MiWiFi-Drcom/config/
cp Package/drcom/Drcom.sh /userdisk/MiWiFi-Drcom/config/
# mkdir /userdisk/MiWiFi-Drcom/etc/
cp Package/drcom/drcom.conf /userdisk/MiWiFi-Drcom/etc/
mv /etc/rc.local /etc/rc.local.miwifi_backup
cat Package/boot/rc.local /etc/rc.local.miwifi_backup > /etc/rc.local
read -p "Username: " username
read -p "Password: " -s password
echo
read -p "IP Address: " IP
echo "Your config: "
echo "Username: "$username
echo "Password: "$password
echo "IP Address: "$IP
read -p "Are you sure your configuration is right? [Return/Ctrl+C]: " -n1
clear
echo "username = '"$username"'" >> /userdisk/MiWiFi-Drcom/etc/drcom.conf
echo "password = '"$password"'" >> /userdisk/MiWiFi-Drcom/etc/drcom.conf
echo "host_ip = '"$IP"'" >> /userdisk/MiWiFi-Drcom/etc/drcom.conf
echo "Installation Succeeded!"
read -p "Would you like to reboot now? [Return/Ctrl+C]: " -n1
reboot