#!/bin/bash -x

read -p "Enter a number multiple of Ten " number

case $number in
	1)
		echo UNIT
		;;
	10)
		echo TEN
		;;
	100)
		echo HUNDRED
		;;
	1000)
		echo THOUSAND
		;;
	10000)
		echo TEN THOUSAND
		;;
	*)
		echo Invalid
		;;
esac





