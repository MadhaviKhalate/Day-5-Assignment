#!/bin/bash -x

read -p "Enter Start Value: " start
read -p "Enter End Value: " end

for (( n=start; n<=end; n++ ))
do  
    is_prime=1
    max_factor=$(echo $n | awk '{printf "%d", sqrt($1)}')
    for (( i=2; i<=max_factor; i++ ))
    do
        if (( n%i==0 ))
        then
           is_prime=0
        break
        fi
    done
    if((is_prime))
    then    
        echo "$n Is a Prime Number"
    fi
done
