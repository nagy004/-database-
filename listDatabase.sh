#!/usr/bin/bash
#echo "hello nagy"

cd ~/database

vsr=($(ls -F | grep / | wc -l))
if [[ $vsr = 0 ]]; then

 echo "this DB is empty"
else ls -F | grep /
fi
 

