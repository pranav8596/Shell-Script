#!/bin/bash -x

#Constants
MIN_VALUE=-1
MAX_VALUE=10000
GREATER_THAN='-gt'
LESS_THAN='-lt'

#Declaration of an Array
declare -a randomNumbers

#To get 10 Random three digits numbers
function getRandomNumbers() {
	for (( i=0; i<10; i++ ))
	do
		randomNumbers[$i]=$((RANDOM%900+100))
	done
}

#To find the Second Largest and Secong Smallest number 
function secondLargestAndSmallest() { 
	first=$2
	second=$2
	for ((i=0; i<${#randomNumbers[@]}; i++))
	do
		if [ ${randomNumbers[$i]} $1 $first ]
		then
			second=$first
			first=${randomNumbers[$i]}
		elif [ ${randomNumbers[$i]} $1 $second ] && [ ${randomNumbers[$i]} -lt $first ]
		then
			second=${randomNumbers[$i]}
		fi
	done
	echo $second
}

getRandomNumbers
echo ${randomNumbers[@]}

secondLargest="$( secondLargestAndSmallest $GREATER_THAN $MIN_VALUE )"
echo "Second Largest:" $secondLargest

secondSmallest="$( secondLargestAndSmallest $LESS_THAN $MAX_VALUE )"
echo "Second Smallest:" $secondSmallest
