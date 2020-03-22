#!/bin/bash

POWER=2

for (( i=0; i<=$1; i++ ))
do
	echo "$POWER ^ $i = $(($POWER**$i))"
done
