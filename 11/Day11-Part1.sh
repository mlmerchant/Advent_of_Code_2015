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

IncrementString azzzz
