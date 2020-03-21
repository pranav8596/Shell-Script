#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HOUR=20

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
salery=$(( $EMP_RATE_PER_HOUR * $empHours ))
