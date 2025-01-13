#!/bin/bash

createfile() {
 FILENAME=$1

 if [[ -f $FILENAME ]]; then
    return 2
 fi

 touch "$FILENAME" 2> /dev/null
}
