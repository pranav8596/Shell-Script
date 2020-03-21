#!/bin/bash -x

read -p "Enter a number(1 - 7): " singleDigit

if [ $singleDigit -eq 1 ]
then
	echo SUNDAY
elif [  $singleDigit -eq 2 ]
then
	echo MONDAY
elif [  $singleDigit -eq 3 ]
then
	echo TUESDAY
elif [  $singleDigit -eq 4 ]
then
	echo WEDNESDAY
elif [  $singleDigit -eq 5 ]
then
	echo THURSDAY
elif [  $singleDigit -eq 6 ]
then
	echo FRIDAY
elif [  $singleDigit -eq 7 ]
then
	echo SATURDAY
else
	echo Invalid
fi





