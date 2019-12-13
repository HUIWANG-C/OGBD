#!/bin/bash

# Gerris Post Processing Conditions
echo Hello .. 
echo "How much Ram (in GB) is available in your machine?"
read -r ram
touch RAM
> RAM
echo $ram > RAM
touch Steps
> Steps
echo Is the simulations you want to post process a ?
echo 1-Single Case
echo 2-List
echo 3-Sequence
echo 
echo 
echo
read -r Condition

if [ $Condition -eq  1 ]
then
        echo Please insert the step number
        read -r step
        echo $step >> Steps


elif [ $Condition -eq  2 ]
then
        echo Please insert the list elements, type s to stop
        read -r step
        while [ $step != s -a $step !=  S ]
        do
                echo $step >> Steps
                read -r step
        done

elif [ $Condition -eq  3 ]
then
        echo Please insert the first element
        read -r step1
        echo Please insert the increment
        read -r step2
        echo Please insert the last element
        read -r step3
        seq $step1 $step2 $step3 >> Steps
fi



echo -1 >> Steps
