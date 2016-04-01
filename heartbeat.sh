#!/bin/sh

# Daemon Path: /etc/network/if-up.d/heartbeat


# Include the configuration file #
. ~/.heartbeatrc

echo "==================================================" | tee $Heartbeat_Log
echo "\n.....ba......bump....." | tee -a $Heartbeat_Log
echo "\nit is $(date), and" | tee -a $Heartbeat_Log
if ping -nc1 -I $Heartbeat_Interface -w1 $Heartbeat_Server >> /dev/null
  then echo "$Heartbeat_Server is UP" | tee -a $Heartbeat_Log
  else echo "$Heartbeat_Server is down" | tee -a $Heartbeat_Log
fi
echo "\n.....zzZZZZzzzzzz.....\n" | tee -a $Heartbeat_Log
echo "==================================================" | tee -a $Heartbeat_Log
