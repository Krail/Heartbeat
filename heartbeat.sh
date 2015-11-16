#!/bin/sh

# Daemon Path: /etc/network/if-up.d/heartbeat


# Include the configuration file #
source /.hrc


echo "==================================================" | tee -a $LOG
echo "\n.....ba......bump....." | tee -a $LOG
echo "\nit is $(date), and" | tee -a $LOG
if ping -nc1 -w1 $SERVER >> /dev/null
  then echo "$SERVER is UP" | tee -a $LOG
  else echo "$SERVER is down" | tee -a $LOG
fi
echo "\n.....zzZZZZzzzzzz.....\n" | tee -a $LOG
echo "==================================================" | tee -a $LOG
