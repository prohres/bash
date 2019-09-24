#!/bin/bash

sum=0

myFunction()
{
	echo "This is text from function"
	echo "First number is: $1"
	echo "Two number is: $2"
	sum=$(($1+$2))
}

myFunction 50 30
echo "Sum of  nimber is: $sum"

