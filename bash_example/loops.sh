#!/bin/bash

COUNTER=0

while [ $COUNTER -lt 10 ]; do
	echo "Current counter is: $COUNTER"
	COUNTER=$(($COUNTER+1))
#	let COUNTER=COUNTER+1
#	let COUNTER+=1
done


for script in `ls *.sh`; do
	ls -la $script
done

for x in {1..10}; do
	echo "X = $x"
done

for (( i=0; i<=7; i++)); do
	echo "Number I = $i"
done
