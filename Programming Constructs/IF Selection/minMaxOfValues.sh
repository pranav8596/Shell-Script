#!/bin/bash -x

read -p "Enter 5 three digit values: " firstValue secondValue thirdValue forthValue fifthValue

#Every number should have 3 digits
DIGIT_REQUIRED=3

#Checking if all the numbers are having 3 digts
if [ $DIGIT_REQUIRED -eq ${#firstValue} ] && [ $DIGIT_REQUIRED -eq ${#secondValue} ] && [ $DIGIT_REQUIRED -eq ${#thirdValue} ] && [ $DIGIT_REQUIRED -eq ${#forthValue} ] && [ $DIGIT_REQUIRED -eq ${#fifthValue} ]
then

	#Finding out the Maximum of all the numbers
	if [ $firstValue -gt $secondValue ] && [ $firstValue -gt $thirdValue ] && [ $firstValue -gt $forthValue ] && [ $firstValue -gt $fifthValue ]
	then
		max=$firstValue
	elif [ $secondValue -gt $thirdValue ] && [ $secondValue -gt $forthValue ] && [ $secondValue -gt $fifthValue ]
	then
		max=$secondValue
	elif [ $thirdValue -gt $forthValue ] && [ $thirdValue -gt $fifthValue ]
	then
		max=$thirdValue
	elif [ $forthValue -gt $fifthValue ]
	then
		max=$forthValue
	else
		max=$fifthValue
	fi

	#Finding out the Minimum of all the numbers
	if [ $firstValue -lt $secondValue ] && [ $firstValue -lt $thirdValue ] && [ $firstValue -lt $forthValue ] && [ $firstValue -lt $fifthValue ]
	then
		min=$firstValue
	elif [ $secondValue -lt $thirdValue ] && [ $secondValue -lt $forthValue ] && [ $secondValue -lt $fifthValue ]
	then
		min=$secondValue
	elif [ $thirdValue -lt $forthValue ] && [ $thirdValue -lt $fifthValue ]
	then
		min=$thirdValue
	elif [ $forthValue -lt $fifthValue ]
	then
		min=$forthValue
	else
      min=$fifthValue
	fi

	echo "$min is Minimum"
	echo "$max is Maximum"
else
	echo "All numbers should contain 3 digit"
fi
