#!/bin/bash

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

function And() {
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

function Or() {
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
