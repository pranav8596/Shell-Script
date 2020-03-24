#!/bin/bash -x

#Declaration of Arrays
declare -a randomNumbers

#To get 10 random three digit numbers
function getRandonNumbers() {
	for (( i=0; i<10;i++ ))
	do
		randomNumbers[$i]=$((RANDOM%900+100))
	done
}

#To sort the array and find 2nd Largest and Samllest
function sortTheArray() {
	length=${#randomNumbers[@]}
	for ((j=0; j<$length; j++))
	do
		echo ${randomNumbers[$j]}
	done | sort -k1 $1 | head -2 | tail -1
}

getRandonNumbers
echo ${randomNumbers[@]}
echo "Second Largest:" $(sortTheArray -rn)
echo "Second Smallest:" $(sortTheArray -n)
