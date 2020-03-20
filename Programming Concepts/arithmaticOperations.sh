#!/bin/bash -x

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

expression1="a + b *c"
expression2="a % b + c"
expression3="c + a / b"
expression4="a *b + c"

result1=$(($a + $b * $c))
result2=$(( $a % $b + $c ))
result3=`echo "scale=2; $c + $a / $b" | bc`
result4=$(( $a * $b + $c ))

echo Resuts are: 
echo $expression1 = $result1
echo $expression2 = $result2
echo $expression3 = $result3
echo $expression4 = $result4
