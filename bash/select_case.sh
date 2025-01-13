#! /bin/bash 

select pill in red blue; do
	case $pill in
	red)
		echo "you will know the truth"; break;;
	blue)
		echo "yoy will know the truth"; break;;
	esac
done
