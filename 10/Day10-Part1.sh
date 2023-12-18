#!/bin/bash

# initialNumber=3113322113 # challenge
# passes=40
initialNumber=1
passes=1

string="$initialNumber"
echo "Starting: $string"
for ((x=1; x <= passes; x++)); do
     firstPass="True"
     while read -r -n 1 number; do
         if [[ -n $number ]]; then#!/bin/bash

initialNumber=3113322113 # challenge
passes=40
# initialNumber=1
# passes=15

string="$initialNumber"
# echo "Starting: $string"
for ((x=1; x <= passes; x++)); do
     firstPass="True"
     while read -r -n 1 number; do
         if [[ -n $number ]]; then
             if [[ $firstPass == "True" ]]; then
                 firstPass="False"
                 priorNum=$number
                 counter=1
                 nextString=""
             else
                 # todo next pass, and if number changes
                 if [[ $priorNum -eq $number ]]; then
                     (( counter++ ))
                  else
                      nextString="${nextString}${counter}${priorNum}"
                      priorNum=$number
                      counter=1
                  fi
              fi
         else
             # todo handle closing out the last number
             string="${nextString}${counter}${priorNum}"
         fi
     done <<< "$string"
# echo "Pass ${x}: $string"
done

# test input result is 312211 with a length of 6.
# challenge input answer has length of 329356
echo ${#string}
             if [[ $firstPass == "True" ]]; then
                 firstPass="False"
                 priorNum=$number
                 counter=1
                 nextString=""
             else
                 # todo next pass, and if number changes
                 if [[ $priorNum -eq $number ]]; then
                     (( counter++ ))
                  else
                      nextString="${nextString}${counter}${priorNum}"
                      priorNum=$number
                      counter=1
                  fi
              fi
         else
             # todo handle closing out the last number
             string="${nextString}${counter}${priorNum}"
         fi
     done <<< "$string"
echo "Pass ${x}: $string"
done

# test input answer is 312211
# change input answer is ???
echo $string
