#!/bin/bash
filename='log.txt'

# reading each line


file='log.txt'
hashfile=var/log/current_users.md5
userchanges=var/log/user_changes
newhash=$(md5sum "$file")
oldhash=$(cat "$hashfile")
if [ "$newhash" != "$oldhash" ]; then
timestamp=$(date)
    echo "$timestamp Changes occurred"  >> var/log/user_changes.md5
fi
echo "$newhash" > "$hashfile"
