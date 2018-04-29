MiWiFi-Drcom
--
[Patched Hiwifi-Drcom for MiWiFi](https://github.com/Chickking/Hiwifi-Drcom/)

### Environment
We have tested it on MiWiFi 3. And we haven't tested it on any other router. We are thankful to guys who are ready to help us to test it on other router.

Tested Environment: MiWiFi 3.
* Model: MiWiFi 3
* System on Chip: MT7620A (MIPS)
* Operating System: MiWiFi 开发版 2.11.20 (OpenWRT)
* RAM: 128 MB
* ROM: 128 MB
* Other: SSH ([Guide](http://aisoa.cn/post-1357.html))

### Usage
1. Turn the auto system updating off if you don't want to re-install it as soon as it updates.
2. Clone this project.
3. Generate your own config by using [Drcoms' auto configurator](http://drcoms.github.io/drcom-generic/). -> [Help](https://github.com/drcoms/drcom-generic)
4. Then delete these three parts from your configuration: username, password and host_ip, which can make it easy to share with your friend. The script will ask these later.
5. Replace Package/drcom/drcom.conf with your own configuration.
6. Copy it to your router and then execute the install.sh

### Tips & Warning
1. If you want to close it yourself, you can use screen -r, or use killall bash_drcom
2. When the installation starts, it will replace your rc.local and do not do any backup. You should backup your rc.local if it is well worth for you.
3. I'm handsome.

### Thanks
The component of the project is listed below:
* drcom_generic : https://github.com/drcoms/drcom-generic  License: AGPL-3.0
* Python 2.7
* bash
* screen of GNU Core Utilities