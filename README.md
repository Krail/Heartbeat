# Give your computer a heartbeat on its LAN

  Give your computer a "heartbeat" so it remains in the server's ARP table. This makes it possible to determine your computer's IP address from its MAC address with my other GitHub project called [WakeCompOnLAN](https://github.com/Krail/WakeCompOnLAN).


## 1. Initialize the RC file by running the 'initialize' script

    ./initialize

  Run the script and enter the information that is requested. Feel free to edit the file directly at ~/.heartbeatrc after you initialize it.

## 2. Copy the contents of heartbeat.sh to /etc/network/if-up.d/heartbeat

    sudo cp -p ./heartbeat.sh /etc/network/if-up.d/heartbeat

  Scripts in /etc/network/if-up.d/ are ran each time a network connection is established. This is useful for when your computer boots up. It speeds up the ARP table update process.

## 3. Copy and paste the contents of heartbeat.crontab to the prompt given by:

    sudo crontab -e

  Crontab's allow command's to be ran regularly (e.g. each minute).
