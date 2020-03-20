#!/bin/bash -x

COUNT=5
for ((i=1; i<=$COUNT; i++))
do
	value=$((RANDOM%90+10))
	echo $value
	sum=$(($sum + $value))
done
avgerage=$(($sum / $COUNT))
echo SUM: $sum
echo AVERAGE: $avgerage
