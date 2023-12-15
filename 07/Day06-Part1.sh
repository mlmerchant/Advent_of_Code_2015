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

function NotGate()
{
    binary=$1

    return=""
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