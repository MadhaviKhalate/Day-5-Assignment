#!/bin/bash -x

headCount=0
tailCount=0
while (( headCount!=11 && tailCount!=11 ))
do
    echo  "..flipping.."
    toss=$(( RANDOM%2 ))
    if [ $toss -eq 0 ]
    then
    echo "Heads"
    (( headCount++ ))
    else
    echo "Tail"
    (( tailCount++ ))
    fi
    echo "Head wins $headCount times and Tail wins $tailCount times"
done


