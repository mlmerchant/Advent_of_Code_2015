#!/bin/bash

input="ckczppom"
prefix="00000"
max_attempts=1000000000

for ((x=1; x<=$max_attempts; x++)); do
    var=$(echo -n "$input$x" | md5sum - | cut -d ' ' -f 1)
    if [[ "${var:0:${#prefix}}" == "$prefix" ]]; then
        echo "Found match: $x"
        break
    fi
done

# Found match: 117946
