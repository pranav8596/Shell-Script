#!/bin/bash

#Declaration of a Dictionary
declare -A dictionary

#Constants
MAX_TIMES=10

#Variables
oneCount=0
twoCount=0
threeCount=0
fourCount=0
fiveCount=0
sixCount=0

#Roll a die to find a number between 1-6
function rollADie() {
	rollDie=$((RANDOM%6+1))
}

#For storing the die results into a dictionary
function storeresultsInDictionary() {
	 case $rollDie in
         1)
            dictionary[$rollDie]=$((++oneCount))
            ;;
         2)
            dictionary[$rollDie]=$((++twoCount))
            ;;
         3)
            dictionary[$rollDie]=$((++threeCount))
            ;;
         4)
            dictionary[$rollDie]=$((++fourCount))
            ;;
         5)
            dictionary[$rollDie]=$((++fiveCount))
            ;;
         6)
            dictionary[$rollDie]=$((++sixCount))
            ;;
	esac
}

#Rolling a Die till any one of the die number reached 10 times
function rollAndStoreInDictionary() {
	while [[ $oneCount -ne $MAX_TIMES && $twoCount -ne $MAX_TIMES && $threeCount -ne $MAX_TIMES && $fourCount -ne $MAX_TIMES && $fiveCount -ne $MAX_TIMES && $sixCount -ne $MAX_TIMES ]]
	do
		rollADie
		storeresultsInDictionary
	done
}

#To get Minimum and Maximum Times of a Die number
function getMinOrMaxTimes() {
	length=${#dictionary[@]}
	times=${dictionary[1]}
	for ((i=1; i<=$length; i++))
	do
		if [ ${dictionary[$i]} $1 $times ]
		then
			times=${dictionary[$i]}
		fi
	done
	echo $times
}

#To get Die Number of Minimum and Maximum Times
function getMinOrMaxDie() {
	for ((i=1; i<=6; i++))
	do
   	if [ ${dictionary[$i]} -eq $1 ]
   	then
   	echo $i
   	fi
	done
}

rollAndStoreInDictionary
echo "Die Numbers: ${!dictionary[@]}"
echo "Times:       ${dictionary[@]}"
minTimes="$(getMinOrMaxTimes -lt)"
maxTimes="$(getMinOrMaxTimes -gt)"
minDieNumber="$(getMinOrMaxDie $minTimes)"
maxDieNumber="$(getMinOrMaxDie $maxTimes)"
echo "--Minimum--"
echo "Die number:" $minDieNumber
echo "Times:" $minTimes
echo "--Maximum--"
echo "Die number:" $maxDieNumber
echo "Times:" $maxTimes

