#! /bin/bash 

division () {
	a=$1
	b=$2
	if [[ $2 -ne 0 ]] then
		echo "$1/$2 = $(($1/$2))"
	else
		echo "division by zero"
	fi
}
division 4 2
division 3 0
