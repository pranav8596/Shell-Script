#!/bin/bash -x

diceNumber1=$((RANDOM%6+1))
diceNumber2=$((RANDOM%6+1))
echo Die 1: $diceNumber1
echo Die 2: $diceNumber2
addition=$(($diceNumber1 + $diceNumber2))
echo Addition od both Dice is: $addition
