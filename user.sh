#!/bin/bash
NAME=($(getent passwd | cut -d ':' -f 1))
HOMEDIR=($(getent passwd | cut -d ':' -f 6))
i=0
for user in "${NAME[@]}"; do
echo "$user:${HOMEDIR[i]}" >> log.txt 
((i++))
done