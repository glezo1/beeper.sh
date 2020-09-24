#!/bin/bash

version="0.1"

message="done"
if [ $# -gt 0 ];
then
	message=$1
else
	echo "beeper.sh version $version"
	echo "beeper.sh <message> will beep message until killed, sleeping for one second"
fi

if ! speak --version &>/dev/null
then
	sudo apt-get install --assume-yes espeak > /dev/null 2>&1
fi

while true
do
	espeak "$message" 2>/dev/null;
	sleep 1;
done;
