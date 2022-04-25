#!/bin/bash -x

checkPalindrome ()
{
    num=$1
    temp=$num
    reverse=0
    while [[ $num -gt 0 ]]
    do
        remainder=$(( $num%10 ))
        reverse=$(( $reverse*10+$remainder ))
        (( num/=10 ))

    done
    if [[ reverse -eq temp ]]
    then
        echo "$temp Is Palindrome"
    else
        echo "$temp Is Not Palindrome"
    fi
}

read -p "Enter Number:" n
checkPalindrome $n
