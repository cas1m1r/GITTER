#!/bin/sh
ls Users | while read name; 
do 
	rm $name/*.json
	rm $name/*.png
done
#EOF
