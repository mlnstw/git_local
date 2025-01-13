#! bin/bash 

read -r DIRNAME 

if [[ -e $DIRNAME ]]; then
	echo "exist"
elif [[ ! -e $DIRNAME ]]; then
	mkdir $DIRNAME ; echo "created"
fi
