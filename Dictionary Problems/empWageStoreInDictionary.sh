#!/bin/bash -x

#Constants
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20
MAX_HRS_IN_MONTH=100
MAX_WORKING_DAYS=20

#Variables
totalWorkHrs=0
totalWorkDays=0

#Declaration of an array
declare -a employeeDailyWage

#To get the number of Hours the employee works
function getWorkingHours() {
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
	echo $empHours
}

#To get Daily wage of the Employee
function getDailyWage() {
	workHours=$1
	wage=$(($workHours * $EMP_RATE_PER_HOUR))
	echo $wage
}

#Calculating wages till working days or working hours reaches to a limit
function empWageComputation() {
	while [[ $totalWorkHrs -lt $MAX_HRS_IN_MONTH && $totalWorkDays -lt $MAX_WORKING_DAYS ]]
	do
		((totalWorkDays++))
		workHours="$(getWorkingHours)"
		totalWorkHrs=$(($totalWorkHrs + $workHours))
		employeeDailyWage[$totalWorkDays]="$(getDailyWage $workHours)"
	done
	totalSalery=$(( $EMP_RATE_PER_HOUR * $totalWorkHrs ))
	echo "Day:        ${!employeeDailyWage[@]}"
	echo "Daily wage: ${employeeDailyWage[@]}"
	echo "Total salery of a month: $totalSalery"
}

#Main
empWageComputation
