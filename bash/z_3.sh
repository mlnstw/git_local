#!/bin/bash
IP=127.0.0.1 #не изменять
PORT=80 #не изменять
LOG_FILE=/var/log/syslog #не изменять
STATUS_FILE=status #не изменять

nc -z "$IP" "$PORT"
ret=$?
DATA=$(date | awk '{print $2,$3,$4}')

[[ $ret -gt '0' ]] && echo "NO" > $STATUS_FILE

if [[ $ret -eq '0' && -s $STATUS_FILE ]]; then
    echo "$DATA port_check: IP $IP Port $PORT is available again" > $LOG_FILE
elif [[ $ret -gt '0' ]]; then
    echo "$DATA port_check: IP $IP Port $PORT is not available" > $LOG_FILE        

fi
