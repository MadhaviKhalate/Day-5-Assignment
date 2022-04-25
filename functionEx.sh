#!/bin/bash -x

function my_func()
{
	value=$(($1*$2))
	echo $value
}

echo "Enter value for num1 and num2 : " 
read num1 
read num2
my_func $num1 $num2
#mul=$value
echo "Multiplication of $num1 and $num2: " $value
