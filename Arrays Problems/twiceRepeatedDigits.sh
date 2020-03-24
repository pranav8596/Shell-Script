#!/bin/bash -x

#Declaration of an Array
declare -a twiceRepeatedDigits

#To get the digits that are repeated twice
function getDigitsRepeatedTwice() {
	counter=0
	for ((i=1; i<=100; i++))
	do
		if [ $(($i % 11)) -eq 0 ]
		then
			twiceRepeatedDigits[((counter++))]=$i
		fi
	done
}

getDigitsRepeatedTwice

#Print all the elements of an array
echo ${twiceRepeatedDigits[@]}
