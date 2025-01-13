#! /bim/bash

RUN_FILE=/tmp/runfile  #otslezh file
S=0.1 # regul-t proverki v sek

while true; do
	if [[ ! -e $RUN_FILE ]]; then
		echo "ERROR"; 
			exit 1
	fi
	sleep $S
done
