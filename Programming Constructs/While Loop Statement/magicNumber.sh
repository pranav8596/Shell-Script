#!/bin/bash -x

low=1
high=100
echo -e "Guess the number between $low to $high\n"

while [[ $low -ne $high ]]
do
	mid=$(( $(($low + $high)) / 2))
	echo -e "Enter 1 if your number is between $low - $mid\nEnter 2 if your number is between $(($mid + 1)) - $high"
	read choice
	if [ $choice -eq 1 ]
	then
		high=$mid
	elif [[ $choice -eq 2 ]]
	then
		low=$(($mid+1))
	else
		echo "Invalid choice! Enter again"
	fi
done
echo "Your number is $low"
