#!/bin/bash

#Either Head or Tail should win 11 times
LIMIT=11

flip=1
head=0
tail=0

#Check for the count of head or tail till the LIMIT
while [[ $head -ne $LIMIT ]] && [[ $tail -ne $LIMIT ]]
do
	randomSide=$((RANDOM%2))
	if [ $randomSide -eq $flip ]
	then
		((head++))
	else
		((tail++))
	fi
done
echo "Head: $head"
echo "Tail: $tail"
