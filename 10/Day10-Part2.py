#!/bin/env python3

initial_number = "3113322113"
passes = 50

string = initial_number
for x in range(1, passes + 1):
    print(f"Working on {x} of {passes}")
    next_string = []
    counter = 1
    prior_num = string[0]

    for y in range(1, len(string)):
        current_num = string[y]
        if prior_num == current_num:
            counter += 1
        else:
            next_string.append(f"{counter}{prior_num}")
            prior_num = current_num
            counter = 1

    # Adding the last sequence
    next_string.append(f"{counter}{prior_num}")

    string = ''.join(next_string)
    print(f"Pass {x}: {string}")

# The correct answer is 4666278
print(f"Length of final string: {len(string)}")
