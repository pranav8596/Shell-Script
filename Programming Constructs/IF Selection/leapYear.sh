#!/bin/bash -x

#Number of digits in the year should be four
DIGITS_REQUIRED=4

read -p "Enter the year: " year

#To get the digits of the year
digit=${#year}

if [ $digit -eq $DIGITS_REQUIRED ]
then
	if [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0  ] || [ $(($year%400)) -eq 0 ] 
	then
		echo $year is a Leap year
	else
		echo $year is not a Leap year
	fi
else
	echo Year should contain 4 digts. 
fi
	
