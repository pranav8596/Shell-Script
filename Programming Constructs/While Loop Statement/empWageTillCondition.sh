#!/bin/bash -x

#Constants
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20
MAX_HRS_IN_MONTH=10
MAX_WORKING_DAYS=20

#Variables
totalWorkHrs=0
totalWorkDays=0

while [[ $totalWorkHrs -lt $MAX_HRS_IN_MONTH && $totalWorkDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkDays++))
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
	totalWorkHrs=$(($totalWorkHrs + $empHours))
done
totalSalery=$(( $EMP_RATE_PER_HOUR * $totalWorkHrs ))
