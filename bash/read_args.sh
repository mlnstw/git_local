#! /bin/bash 

read_args () {

	echo $@
	for item in $@; do
		echo $item
	done
}

read_args param1 param2 param3
