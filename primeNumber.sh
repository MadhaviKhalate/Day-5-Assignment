#!/bin/bash -x

read -p "Enter the number: " n
max_factor=$(echo $n | awk '{printf "%d", sqrt($1)}')
is_prime=1
for (( i=2; i<=$n/2; i++ ))
do
    if (( n % i == 0 ))
    then
        is_prime=0
    break
    fi
done
if(( is_prime ))
then    
    echo "$n Is a Prime Number"
else
    echo "$n Is Not Prime Number"
fi

