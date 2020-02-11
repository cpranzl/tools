#!/usr/bin/env bash
# A simple copy script

for file in $1/*.mp4 
do
	cp "$file" /mnt/usbstick/
done

echo All done!

