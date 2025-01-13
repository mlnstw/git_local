#!/bin/bash

avgfile() {
 DIRNAME=$1
 if [[ ! -d $DIRNAME ]]; then
   return 1
 fi;
 sum=0
 filecount=0
 for file in "$DIRNAME"/*; do
   if [[ -f $file && ! -h $file ]]; then
      ((sum+=$(stat -c "%s" "$file")))
      ((filecount++))
   fi;
 done;
 echo $((sum/filecount))
}
