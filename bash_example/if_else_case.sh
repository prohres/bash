#!/bin/bash

read -p "Please enter your name: " x

if   [ "$x" == "will" ]; then
	echo "First name: $x"
elif [ "$x" == "smith" ]; then
	echo "Last name: $x"
else    echo "Invalide name: $x"
fi

read -p "Please enter some parametr for range 1-9: " y

echo "Your parametr is: "
case $y in
	1) echo "This is One";;
    [2-3]) echo "Two or Three";;
    [4-5]) echo "Four or Five";;
    [6-7]) echo "Six or Seven";;
    [8-9]) echo "Eight or Nine";;
	*) echo "Parameter unknown, sorry!"
esac
