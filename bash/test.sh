#! /bin/bash 
i=0
echo $i

p=$(stat -c %s avgfile.sh)
let "i = p + i"
echo $i

