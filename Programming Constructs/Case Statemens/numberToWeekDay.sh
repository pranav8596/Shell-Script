#!/bin/bash -x

read -p "Enter a number(1 - 7): " singleDigit

case $singleDigit in
	1)
		day=SUNDAY
		;;
	2)
		day=MONDAY
		;;
	3)
		day=TUESDAY
		;;
	4)
		day=WEDNESDAY
		;;
	5)
		day=THURSDAY
		;;
	6)
		day=FRIDAY
		;;
	7)
		day=SATURDAY
		;;
	*)
		day=Invalid
		;;
esac
echo $day





