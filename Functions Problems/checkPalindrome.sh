#!/bin/bash -x

#To check if the input number is Palindrome or not
function palindrome() {
	inputNumber=$1
	temp=$1
	palindromeNumber=0
	while [ $temp -ne 0 ]
	do
		remainder=$(($temp % 10))
		palindromeNumber=$(( $(($palindromeNumber*10)) + $remainder ))
		temp=$(($temp / 10))
	done

	if [ $inputNumber -eq $palindromeNumber ]
	then
		echo "$number is a Palindrome number"
	else
		echo "$number is not a Palindrome number"
	fi
}

read -p "Enter your number: " number
palindrome $number

