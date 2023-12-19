#!/bin/bash

initialNumber=3113322113
passes=50

string="$initialNumber"
for ((x=1; x <= passes; x++)); do
     echo "Working on $x of $passes"
     nextString=()
     nextIndex=0
     counter=1
     priorNum=${string:0:1}

     for ((y=1; y <= ${#string}; y++)); do
         currentNum=${string:y:1}
         if [[ $priorNum == $currentNum ]]; then
             ((counter++))
         else
             nextString[nextIndex]="${counter}${priorNum}"
             ((nextIndex++))
             priorNum=$currentNum
             counter=1
         fi
     done

     string=$(echo ${nextString[*]} | sed 's/ *//g')
     echo "Pass ${x}: $string"
done

echo "Length of final string: ${#string}"
