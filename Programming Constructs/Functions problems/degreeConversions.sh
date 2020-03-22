#!/bin/bash -x

#To perform Celcius to Fahrenheit Conversion
function celciusToFahrenheit() {
	read -p "Enter temperature in Celcius (0 C - 100 C): " celcius
	if [[ $celcius -ge 0 && $celcius -le 100 ]]
	then
		fahrenheit=`echo "scale=2; $(( $(($celcius * 9/5)) + 32 ))" | bc`
		echo $celcius C = $fahrenheit F
	else
		echo "Invalid temperature!"
	fi
}

#To perform Fahrenheit to Celcius Conversion
function fahrenheitToCelcius() {
	read -p "Enter temperature in Fahrenheit (32 F -  212 F ): " fahrenheit
	if [[  $fahrenheit -ge 32 && $fahrenheit -le 212 ]]
	then
		celcius=`echo "scale=2; $(( $(($fahrenheit - 32)) * 5/9 ))" | bc`
		echo $fahrenheit F = $celcius C
	else
		echo "Invalid temperature!"
	fi
}

#To make a choice of the Conversions
function degreeConversions() {
	echo -e "1. Celcius to Fahrenheit\n2. Fahrenheit To Celcius"
	read choice
	case $choice in
		1)
			celciusToFahrenheit
			;;
		2)
			fahrenheitToCelcius
			;;
		*)
			echo "Invalid choice!"
			;;
	esac
}

degreeConversions


