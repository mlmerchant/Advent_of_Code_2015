#!/bin/bash

function IncrementLetter() {
echo $1 | tr "a b c d e f g h i j k l m n o p q r s t u v w x y z" "b c d e f g h i j k l m n o p q r s t u v w x y z a"
[[ $1 == 'z' ]] && return 0
return 1
}


IncrementString() {
    inputString=$(echo $1 | rev)
    returnString=""
    runIncrement="True"
    while read -r -n 1 char; do
        if [[ $runIncrement == "True" ]]; then     
            returnString="$(IncrementLetter $char)$returnString"
        else
            returnString="$char$returnString"
        fi
        if [[ $? -eq 1 ]]; then
            runIncrement="False"
        fi
    done <<< $inputString   
    echo $returnString
}


function Condition3() {
    local marker=1
    local string=$1
    local alphabet=( 'aa' 'bb' 'cc' 'dd' 'ee' 'ff' 'gg' 'hh' 'ii' 'jj' 'kk' 'll' 'mm' 'nn' 'oo' 'pp' 'qq' 'rr' 'ss' 'tt' 'uu' 'vv' 'ww' 'xx' 'yy' 'zz' )
    local i
    for i in {1..2}; do
        for pattern in "${alphabet[@]}"; do
            string=$(echo $string | sed "s/$pattern/$marker/")
            if (echo $string | grep "$marker" > /dev/null); then
                if [[ $marker == "1" ]]; then
                    marker=2
                else
                    return 0 # $second pair found
                fi
            fi
        done 
    done
    return 1 # failed to find a match
}