#!/bin/bash -x

read -p "Enter a Number:" num
fact=1
i=1
for (( i=1; i<=num; i++ ))
do
    (( fact*=i ))
done
echo "The factorial of $num = $fact"

