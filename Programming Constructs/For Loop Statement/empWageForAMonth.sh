#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
empRatePerHr=20
numWorkingDays=20
totalSalery=0

for (( i=1; i<=$numWorkingDays; i++ ))
do
	ramdomCheck=$((RANDOM%3))
	case $ramdomCheck in
		$IS_PART_TIME)
			empHours=4
			;;
		$IS_FULL_TIME)
			empHours=8
			;;
		*)
			empHours=0
			;;
	esac
	salery=$(( $empRatePerHr * $empHours ))
	totalSalery=$(( $totalSalery + $salery ))
done
