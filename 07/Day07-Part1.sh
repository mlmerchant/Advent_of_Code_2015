#!/bin/bash
# https://adventofcode.com/2015/day/7

INPUT_FILE="test.txt"

cat << EOF > test.txt
123 -> x
456 -> y
x AND y -> d
x OR y -> e
x LSHIFT 2 -> f
y RSHIFT 2 -> g
NOT x -> h
NOT y -> i
EOF

# After it is run, these are the signals on the wires:
# d: 72
# e: 507
# f: 492
# g: 114
# h: 65412
# i: 65079
# x: 123
# y: 456


function RShiftGate() {
    local dec=$1
    local length=${#dec}
    local result="0"
    local i
    for ((i=0 ; i < length - 1; i++)); do
        result=${result}${dec:$i:1} 
    done   
    echo $result
}

function LShiftGate() {
    local dec=$1
    local length=${#dec}
    local result=""
    local i
    for ((i=1 ; i < length; i++)); do
        result=${result}${dec:$i:1} 
    done   
    echo "${result}0"
}

function Int2Bin() {
    local num=$1
    local bin=""

    while [ $num -gt 0 ]; do
        bin=$(( $num % 2 ))$bin # Get the remainder and prepend to the binary string
        num=$(( $num / 2 ))
    done

    printf "%016d\n" $bin # Pad with zeros to make it 16 bits
}

function NotGate() {
    local binary=$1
    local return=""
    local var
    
    while read -n 1 var; do
        if [[ $var -eq 0 ]]; then
            return=${return}1
        elif [[ $var -eq 1 ]]; then
            return=${return}0
        else
            echo "Bad Input!"
            exit 11
        fi 
    done <<< "$binary"
    echo $return
}

function Bin2Dec() {
    local dec=$1
    local num
    local i=${#dec}
    local currentPower=1  #  1, 2, 4, 8, 16 etc
    local currentNumber
    local result=0
    
    for ((i-- ; i > -1; i--)); do  #  Starting at far right, value of 1
        currentNumber=${dec:$i:1}
        result=$(( (currentPower * currentNumber) + result ))
        currentPower=$(( currentPower * 2 ))    
    done
    echo $result
}

function AndGate() {
    local dec1=$1
    local dec2=$2
    local length=${#dec1}
    local result=""
    local i
    for ((i=0 ; i < length; i++)); do
        if [[ ${dec1:$i:1} -eq 1 ]] &&  [[ ${dec1:$i:1} -eq 1 ]]; then
            result=${result}1
        else
            result=${result}0
        fi 
    done   
    echo $result
}

function OrGate() {
    local dec1=$1
    local dec2=$2
    local length=${#dec1}
    local result=""
    local i
    for ((i=0 ; i < length; i++)); do
        if [[ ${dec1:$i:1} -eq 1 || ${dec2:$i:1} -eq 1 ]]; then
            result=${result}1
        else
            result=${result}0
        fi 
    done   
    echo $result
}



# Store of solved values
declare -A lookup


while true; do
    while read -r var; do
        
        #  x AND y -> d
        if (echo $var | grep "AN" > /dev/null); then        
            echo AND


        #  x OR y -> e
        elif (echo $var | grep "OR" > /dev/null); then
            echo OR


        #  x LSHIFT 2 -> f
        elif (echo $var | grep "LS" > /dev/null); then
            echo LSHIFT
        

        #  y RSHIFT 2 -> g
        elif (echo $var | grep "RS" > /dev/null); then
            echo RSHIFT     
       

        #  NOT x -> h
        elif (echo $var | grep "NO" > /dev/null); then
            echo NOT           

 
        #  No Gate
        else
            echo No Gate
        fi

    done < $INPUT_FILE
    break
done
