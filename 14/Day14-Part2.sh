#!/bin/env bash

cat << EOF > challenge.txt
Vixen can fly 8 km/s for 8 seconds, but then must rest for 53 seconds.
Blitzen can fly 13 km/s for 4 seconds, but then must rest for 49 seconds.
Rudolph can fly 20 km/s for 7 seconds, but then must rest for 132 seconds.
Cupid can fly 12 km/s for 4 seconds, but then must rest for 43 seconds.
Donner can fly 9 km/s for 5 seconds, but then must rest for 38 seconds.
Dasher can fly 10 km/s for 4 seconds, but then must rest for 37 seconds.
Comet can fly 3 km/s for 37 seconds, but then must rest for 76 seconds.
Prancer can fly 9 km/s for 12 seconds, but then must rest for 97 seconds.
Dancer can fly 37 km/s for 1 seconds, but then must rest for 36 seconds.
EOF

# cut out useless context
cut -d ' ' -f 1,4,7,14 > chal < challenge.txt
mv chal challenge.txt

TIMER=2503 # seconds

# build tables for tracking who is farthest each second
declare -A names
declare -A ScoreTable
declare -A finalDistance 
for ((x=0; x < TIMER; x++)); do
    declare -A "LookUp$x"
done 


while read -r name speed stamina rest; do
    names["$name"]=0 # collecting the names for later
    distance=0
    temp_stamina=$stamina
    temp_rest=$rest
    for ((x=0; x < TIMER; x++)); do
        # handle resting 
        if [[ $temp_stamina -eq 0 ]]; then
            ((temp_rest--))
            if [[ $temp_rest -eq 0 ]]; then
                temp_rest=$rest
                temp_stamina=$stamina
            fi
            eval "LookUp$x[$name]=$distance"
            continue
        fi
        # handle incrementing distance
        distance=$((distance + speed))
        # distance costs stamina 
        ((temp_stamina--))
        eval "LookUp$x[$name]=$distance"
    done 
    finalDistance[$name]=$distance
done < challenge.txt


for ((x=0; x < TIMER; x++)); do
    furthest_distance=0
    further_name=0
    for name in "${!names[@]}"; do
        a='${LookUp'
        eval "temp=$a$x[$name]}"
        echo $temp
    done
done



# ???? is the correct answer 
echo $winning_time
