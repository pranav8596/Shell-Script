#!/bin/bash -x

function palindrome() {
	temp=$1
	value=0
	while [ $temp -ne 0 ]
	do
		remainder=$(($temp % 10))
		value=$(( $(($value*10)) + $remainder ))
		temp=$(($temp / 10))
	done
	echo $value
}

read -p "Enter your number: " number

inputNumber=$number
palindromeNumber="$( palindrome $number )"

#Check if the input number is equal to the palindrome number
if [ $inputNumber -eq $palindromeNumber ]
then
	echo "$number is a Palindrome number"
else
	echo "$number is not a Palindrome number"
fi

