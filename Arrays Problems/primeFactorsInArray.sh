#!/bin/bash -x

#Declaration of an Array
declare -a primeFactors

#To get the prime facotrs of the given number
function primefactors() {
	counter=0
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
			primeFactors[((counter++))]=$i
		fi
	done
}

read -p "Enter a number: " number
primefactors
echo -e "Prime factors for $number are:\n${primeFactors[@]}"
