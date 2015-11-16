# Give your computer a heartbeat on its LAN


## 1. Copy and paste the contents of heartbeat.crontab to the prompt given by:

    sudo crontab -e

## 2. Copy the contents of heartbeat.sh to /etc/network/if-up.d/heartbeat which is ran each time a network connection is established.

    cp ./heartbeat.sh /etc/network/if-up.d/heartbeat
