#!/bin/bash

read -p "Enter the range of numbers: " number

for (( i=2; i<=number; i++ ))
do
	isPrime=1
	for (( j=2; j<i; j++ ))	
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			isPrime=0
		fi
	done
	if [ $isPrime -eq 1 ] && [ $(($number % $i)) -eq 0 ]
	then
		echo $i
  	fi
done
