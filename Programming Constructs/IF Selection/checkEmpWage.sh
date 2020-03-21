#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isPresent ]
then
	empRatePerHr=20
	EmpHrs=8
	salery=$(( $empRatePerHr * $EmpHrs ))
	echo Employee is present
	echo $salery
else
	echo "Employee is absent"
	salery=0
	echo $salery
fi
