#!/bin/bash -x

flip=1
randomSide=$((RANDOM%2))

if [ $randomSide -eq $flip ]
then
	echo HEADS
else
	echo TAILS
fi
