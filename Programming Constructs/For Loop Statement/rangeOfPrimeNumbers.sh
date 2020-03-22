#!/bin/bash -x

read -p "Enter the range of numbers: " start end

for (( i=$start; i<=$end; i++ ))
do
	isPrime=1
	for (( j=2; j<i; j++ ))
	do
		if [ $(($i % $j)) -eq 0 ]
		then
			isPrime=0
		fi
	done
	if [ $isPrime -eq 1 ]
	then
 		echo $i
  	fi
done
