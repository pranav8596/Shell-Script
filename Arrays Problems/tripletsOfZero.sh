#!/bin/bash

#Declaration of an Array
declare -a elements

#To find the sum of three integers adds to Zero
function tripletsAddsToZero() {
	length=$1
	for ((i=0; i<$(($length-2)); i++))
	do
		for ((j=$i+1; j<$(($length-1)); j++))
		do
			for ((k=$j+1; k<$length; k++))
			do
				if [ $((${elements[$i]} + ${elements[$j]} + ${elements[$k]})) -eq 0 ]
				then
					echo "${elements[$i]} ${elements[$j]} ${elements[$k]}"
				fi
			done
		done
	done
}

elements=(-3 8 0 3 5 6 -8 -6)
length=${#elements[@]}
echo "Triplets of Zero are: "
tripletsAddsToZero $length
