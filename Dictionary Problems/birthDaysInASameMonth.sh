#!/bin/bash

#Constant
INDIVIDUALS=50

#Declaration of the Dictionary
declare -A birthDayDictionary

#To get the Birth Year(1992/1993)
function getBirthYear() {
	echo $(( RANDOM%2+1992 ))
}

#To get the Birth Month
function getBirthMonth() {
	echo $(( RANDOM%12+1 ))
}

#To get the Birth Month in Words
function getBirthMonthInWords() {
	case $birthMonth in
		1)
			monthInWords="Jan"
			;;
		2)
			monthInWords="Feb"
			;;
		3)
			monthInWords="Mar"
			;;
		4)
			monthInWords="Apr"
			;;
		5)
			monthInWords="May"
			;;
		6)
			monthInWords="Jun"
			;;
		7)
			monthInWords="Jul"
			;;
		8)
			monthInWords="Aug"
			;;
		9)
			monthInWords="Sep"
			;;
		10)
			monthInWords="Oct"
			;;
		11)
			monthInWords="Nov"
			;;
		12)
			monthInWords="Dec"
			;;
	esac
}

#To store birth months in a Dictionary
function storeInDictionary() {
	getBirthMonthInWords
	birthday="$monthInWords/$birthYear"
	birthDayDictionary[$birthMonth]="${birthDayDictionary[$birthMonth]} $birthday"
}

#To display the list of the individuals
function displayList() {
	for (( i=1; i<=12; i++ ))
	do
		echo $i = ${birthDayDictionary[$i]}
	done
}

#To generate the birth months of 50 individuals
function birthDayInSameMonth() {
	for ((i=1; i<=$INDIVIDUALS; i++))
	do
		birthYear=$(getBirthYear)
		birthMonth=$(getBirthMonth)
		storeInDictionary
	done
	displayList
}

#Main
birthDayInSameMonth
