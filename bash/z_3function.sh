#! /bin/bash

createfile () {
	FILENAME=$1
	if [[ -f $1 ]]; then
		return 2
	fi

	if [[ touch "$FILENAME" | 2> /dev/null ]]; then
		return 1
	elif [[ touch "$FILENAME" | 2> /dev/null ]]; then
		return 0
	fi
}
createfile topp
