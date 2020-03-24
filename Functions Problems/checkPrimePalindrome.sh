#!/bin/bash -x

#To check if the number is Prime
function checkPrime() {
	number=$1
	isPrime=1
	for (( i=2; i<$number; i++ ))
	do
		if [ $(($number % $i)) -eq 0 ]
		then
			isPrime=0
		fi
	done
	echo $isPrime
}

#To check if the number is Palindrome
function checkPalindrome() {
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

#To check if the number is Palindrome and also a Prime number
function checkPrimePalindrome() {
	inputNumber=$1
	prime="$(checkPrime $inputNumber)"
	#To check if the number is Prime number
	if [ $prime -eq 1 ]
	then
		palindrome="$(checkPalindrome $inputNumber)"
		#To check if the number is Palindrome number
		if [ $inputNumber -eq $palindrome ]
		then
			primePalindrome="$(checkPrime $palindrome)"
			#To check if the number is Palindorme and also a Prime number
			if [ $primePalindrome -eq 1 ]
			then
				echo "Palindrome of $inputNumber is ALSO a Prime"
			else
				echo "Palindrome of $inputNumber is NOT a Prime"
			fi
		else
			echo "$inputNumber is a Prime number but not a Palindome"
		fi
	else
		echo "$inputNumber is not a Prime number"
	fi
}

read -p "Enter your number: " number
checkPrimePalindrome $number
