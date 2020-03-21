#!/bin/bash -x

echo -e "1.Feet to Inch\t\t 2.Inch to Feet\n3.Feet to Meter\t\t 4.Meter to Feet\n"

read -p "Enter your choice: " choice

case $choice in
	1)
		echo "----- Feet to Inches -----"
		read -p "Enter the lenth in Feet: " feet
		inches=$(($feet * 12 ))
		echo "$feet ft == $inches inch"
		;;
	2)
		echo "----- Inches to Feet -----"
		read -p "Enter the length in inches: " inches
		feet=`echo "scale=2; $(($inches / 12))" | bc`
		echo "$inches inch = $feet ft"
		;;
	3)
		echo "----- Feet to Meter -----"
		read -p "Enter the length in feet: " feet
		meter=`echo "scale=2; $(($feet * 0.3048))" | bc`
		echo "$feet ft = $meter meter"
		;;
	4)
		echo "----- Meter to Feet -----"
		read -p "Enter the length in Meter: " meter
		feet=`echo "scale=2; $(($meter * 3.28084))" | bc`
		echo "$meter meter = $feet feet"
		;;
	*)
		echo "Please enter enter valid choice"
		;;
esac
