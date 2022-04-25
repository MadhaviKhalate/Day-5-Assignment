#!/bin/bash -x

read -p "Enter the number : " n
result=1/1
for (( i=2; i<=n; i++ ))
do
    temp=$( echo "1/$i" )
    result=$( echo $result + $temp )
done
echo "The H${n} harmonic number is $result"
