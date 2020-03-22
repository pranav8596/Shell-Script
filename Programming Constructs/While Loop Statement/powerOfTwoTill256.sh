#!/bin/bash

POWER=2
MAX_RESULT=256

result=1
i=0

while [[ $result -le $MAX_RESULT ]]
do
	echo "$POWER ^ $i = $result"
	result=$(($result * $POWER))
	((i++))
done
