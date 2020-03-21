#!/bin/bash -x

read -p "Enter a single digit number: " singleDigit

if [ $singleDigit -eq 0 ]
then
	echo ZERO
elif [  $singleDigit -eq 1 ]
then
	echo ONE
elif [  $singleDigit -eq 2 ]
then
	echo TWO
elif [  $singleDigit -eq 3 ]
then
   echo THREE
elif [  $singleDigit -eq 4 ]
then
   echo FOUR
elif [  $singleDigit -eq 5 ]
then
   echo FIVE
elif [  $singleDigit -eq 6 ]
then
	echo SIX
elif [  $singleDigit -eq 7 ]
then
	echo SEVEN
elif [  $singleDigit -eq 8 ]
then
	echo EIGHT
elif [  $singleDigit -eq 9 ]
then
	echo NINE
else
	echo Invalid
fi





