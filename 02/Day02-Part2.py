# A present with dimensions 2x3x4:
#   requires 2+2+3+3 = 10 feet of ribbon to wrap the present
#   plus 2 * 3 * 4 = 24 feet of ribbon for the bow,
#   for a total of 34 feet.

with open("challenge.txt") as file:
    presents = []
    line = file.readline()
    while line:
        presents.append(line.strip().split("x"))
        line = file.readline()

total = 0

for present in presents:

    present = [int(side) for side in present]

    # select 2 smallest sides
    present.sort()

    total += (present[0] * 2) + (present[1] * 2)
    total += present[0] * present[1] * present[2]


# 3737498 is the correct answer.
print(total)
