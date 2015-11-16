# Give your computer a heartbeat on its LAN

Give your computer a "heartbeat" so it remains in the server's ARP table. This makes it possible to determine your computer's IP address from its MAC address with [WakeCompOnLAN](https://github.com/Krail/WakeCompOnLAN).


## 1. Copy and paste the contents of heartbeat.crontab to the prompt given by:

    sudo crontab -e

Crontab's allow command's to be ran regularly (e.g. each minute).

## 2. Copy the contents of heartbeat.sh to /etc/network/if-up.d/heartbeat

    cp ./heartbeat.sh /etc/network/if-up.d/heartbeat

Scripts in /etc/network/if-up.d/ are ran each time a network connection is established. This is useful for when your computer boots up.
