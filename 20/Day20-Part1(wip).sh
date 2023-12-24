declare -A results

for z in {1..10000}; do
    results[$z]=0
done

challenge=34000000
for x in {1..10000}; do
    for (( y=x; y <= 10000; y++)); do
        if [[ $((y % x)) -eq 0 ]]; then
            results[$y]=$((results[$y] + 10))
        fi
    done
done

for z in {1..10000}; do
    if [[ $((results[$z])) -eq $challenge ]]; then
        echo $z
        break
    fi
done
