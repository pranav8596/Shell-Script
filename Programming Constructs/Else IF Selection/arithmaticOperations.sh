#!/bin/bash -x

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

result1=$(($a + $b * $c))
result2=$(( $a % $b + $c ))
result3=`echo "scale=2; $(($c + $a / $b))" | bc`
result4=$(( $a * $b + $c ))

#Calculation for finding the minimum of all the results
if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [$result1 -lt $result4 ]
then
	min=$result1
elif [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ]
then
	min=$result2
elif [ $result3 -lt $result4 ]
then
	min=$result3
else
	min=$result4
fi

#Calculation for finding the maximum of all the results
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ]
then
	max=$result1
elif [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]
then
	max=$result2
elif [ $result3 -gt $result4 ]
then
	max=$result3
else
	max=$result4
fi

echo "$min is Minimum"
echo "$max is Maximim"
