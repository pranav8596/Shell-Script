#!/bin/bash -x

#Constants
STAKE=100
GOAL=200

#Variables
win=0
lose=0
bets=0
amount=$STAKE

#Loop until gambler goes Broke or reaches the Goal
while [[ $amount -ne 0 && $amount -ne $GOAL ]]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((amount++))
		((win++))
	else
		((amount--))
		((lose++))
	fi
	((bets++))
done
if [ $amount -eq $GOAL ]
then
	echo "Congrats! You have reached your Goal"
else
	echo "Oops! You lost all your amount"
fi
echo Amount: $amount
echo Number of times Won: $win
echo Number os times Lost: $lose
echo Number of Bets: $bets
