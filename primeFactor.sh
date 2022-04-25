#!/bin/bash -x

read -p "Enter a Number: " N
echo "The Prime Factors Are"
for (( p=2; p*p<=N; ))
do
    if (( N%p==0 ))
    then
        echo  "$p"
        ((N/=p))
    else
        ((p+=1))
    fi
done
echo $N
