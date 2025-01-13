#! bin/bash 
read -r a
read -r b

if [[ $a -gt $b ]]; then
	((c=a-b)); echo "$c"
elif [[ $b -gt $a ]]; then 
	((c=b-a)); echo "$c"
else 
	((c=a*b)); echo "$c"
fi
