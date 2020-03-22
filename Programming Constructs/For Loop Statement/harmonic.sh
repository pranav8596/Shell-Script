#!/bin/bash -x

read -p "Enter a number: " number

harmonic=1
for (( i=2; i<=$number; i++ ))
do
	value=`echo "scale=2; $((1/$i))" | bc`
	harmonic=$(($harmonic + $value))
done

echo "$number th Harmonic number is $harmonic"
