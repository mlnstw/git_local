#!/bin/bash

avgfile() {
  DIRNAME=$1
	if [[ ! -d "$DIRNAME" ]]; then
		return 1
	fi
	
	bytes=0  #summa razmerov vseh failov v dir
	quant=0  #kol-vo failov v dir
	
	for file in "$DIRNAME"/*
	do
		if [[ ! -h "$file" && ! -d "$file" ]]; then
			p=$(stat -c %s "$file"); let "bytes = bytes + p"; ((quant++))
		fi
	done
	
		let "ave = $bytes / $quant"
		echo "$ave"
}

avgfile /home/sammy/scripts/modul1
