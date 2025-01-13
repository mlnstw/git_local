#! /bin/bash

for file in *; do
	stat "$file"
	sleep 2
done

