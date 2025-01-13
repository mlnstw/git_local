#!/bin/bash
IP=127.0.0.1 #не изменять
PORT=80 #не изменять
LOG_FILE=/var/log/syslog #не изменять
STATUS_FILE=status #не изменять

if [[ ! -f $STATUS_FILE ]]; then
   echo "OK" > "$STATUS_FILE"
fi

status=$(cat "$STATUS_FILE")

nc -z "$IP" "$PORT"
check=$?

if [[ $check -eq 0 && $status == "ERROR" ]]; then
 echo "$(date '+%b %d %H:%M:%S') port_check: IP $IP Port $PORT is available again" >> "$LOG_FILE"
 echo "OK" > "$STATUS_FILE"
elif [[ $check -eq 1 ]]; then
 echo "$(date '+%b %d %H:%M:%S') port_check: IP $IP Port $PORT is not available" >> "$LOG_FILE"
 echo "ERROR" > "$STATUS_FILE"
fi
