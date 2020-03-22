#!/bin/bash -x

read -p "Enter a number: " number

isPrime=1
for (( i=2; i<$number; i++ ))
do
	if [ $(($number % $i)) -eq 0 ]
	then
		isPrime=0
	fi
done
if [ $isPrime -eq 1 ]
then
	echo "$number is a Prime number"
else
	echo "$number is not a Prime number"
fi

