#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20

ramdomCheck=$((RANDOM%3))

if [ $IS_PART_TIME -eq $ramdomCheck ]
then
	empHours=4
elif [ $IS_FULL_TIME -eq $ramdomCheck ]
then
	empHours=8
else
	empHours=0
fi
salery=$(( $EMP_RATE_PER_HOUR * $empHours ))
