#!/bin/bash -x

read -p "Think of a any number 1 and 100 : " n
first=1
last=100
guess=0
while (( $guess==0 ))
do
    magic_number=$(( ($first+$last)/2 ))
    echo "      1 if $n is less than $magic_number"
    echo "      2 if $n is equal to $magic_number"
    echo "      3 if $n is greater than $magic_number"
    read -p "Enter number: " option
    case $option in
	1 )
        	last=$(( $magic_number-1 ))
    	;;
	2 )
        	guess=1
		echo "your guessed number is $magic_number"
	;;
    	3 )
        	first=$(( $magic_number+1 )) 
	;;
     esac    
done
